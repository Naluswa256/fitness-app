import 'package:fitness_app/src/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample1 extends StatefulWidget {
  const BarChartSample1({super.key});
  final Color barColor = Colors.blue;
  final Color barBackgroundColor = AppStyles.progressBackgroundColors;
  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<BarChartSample1> {
  @override
  Widget build(BuildContext context) {
    return BarChart(mainBarData());
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    Color? barColor,
    double width = 22,
  }) {
    // barColor ??= widget.barColor;
    var gradient = (x%2==0)?const LinearGradient(
                        stops: [0.0, 1.0],
                        colors: [
                          AppStyles.primaryColorGradientTwo,
                          AppStyles.primaryColorGradientOne
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ):const LinearGradient(
                                  stops: [0.0, 1.0],
                                  colors: [
                                    AppStyles.secondaryColorGradientThree,
                                    AppStyles.secondaryColorGradientOne
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                );
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          width: width,
          gradient:gradient,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 20,
            color: widget.barBackgroundColor,
          ),
        ),
      ],
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(
              0,
              12.5,
            );
          case 1:
            return makeGroupData(1, 12.5);
          case 2:
            return makeGroupData(2, 5.5);
          case 3:
            return makeGroupData(3, 7.5);
          case 4:
            return makeGroupData(4, 9.5);
          case 5:
            return makeGroupData(5, 11.5);
          case 6:
            return makeGroupData(6, 12.5);
          default:
            return throw Error();
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      groupsSpace: 20,
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 35,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: FlGridData(show: false),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    var style = AppStyles.semiRegular.copyWith(
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text =  Text('Sun', style: style);
        break;
      case 1:
        text =  Text('Mon', style: style);
        break;
      case 2:
        text =  Text('Tue', style: style);
        break;
      case 3:
        text =  Text('Wed', style: style);
        break;
      case 4:
        text = Text('Thu', style: style);
        break;
      case 5:
        text =  Text('Fri', style: style);
        break;
      case 6:
        text =  Text('Sat', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }
}
