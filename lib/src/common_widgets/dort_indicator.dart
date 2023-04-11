import "package:flutter/material.dart";

import "../styles.dart";

class DotIndicator extends Decoration {
  const DotIndicator(
      {this.color = Colors.black,
      this.radius = 4.0,
      this.gradient = const LinearGradient(
        stops: [0.0, 1.0],
        colors: [
          AppStyles.secondaryColorGradientThree,
          AppStyles.secondaryColorGradientOne
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      )});
  final Color color;
  final double radius;
  final Gradient gradient;
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _DotPainter(
      gradient: gradient,
      radius: radius,
      onChange: onChanged,
    );
  }
}

class _DotPainter extends BoxPainter {
  _DotPainter({
    required Gradient gradient,
    required this.radius,
    VoidCallback? onChange,
  })  : _paint = Paint()
          ..shader = gradient.createShader(
              Rect.fromCircle(center: Offset.zero, radius: radius))
          ..style = PaintingStyle.fill,
        super(onChange);
  final Paint _paint;

  final double radius;
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);
    final Rect rect = offset & configuration.size!;

    canvas.drawCircle(
      Offset(rect.bottomCenter.dx, rect.bottomCenter.dy - radius),
      radius,
      _paint,
    );
  }
}
