import 'package:fitness_app/src/styles.dart';
import 'package:flutter/material.dart';
//import 'package:health/health.dart';
import 'package:percent_indicator/percent_indicator.dart';

class WaterIntakeTracker extends StatefulWidget {
  final double maxWaterIntake;

  const WaterIntakeTracker({super.key, required this.maxWaterIntake});

  @override
  State<WaterIntakeTracker> createState() => _WaterIntakeTrackerState();
}

class _WaterIntakeTrackerState extends State<WaterIntakeTracker> {
  final double _waterIntake = 15.0;

  // void _updateWaterIntake() async {
  //   // Set up a time range of the last 10 hours
  //   final now = DateTime.now();
  //   final start = now.subtract(Duration(hours: 10));
  //   final end = now;

  //   // Request water intake data from the health package
  //   final data = await HealthFactory().getHealthDataFromTypes(
  //     start,
  //     end,
  //     [HealthDataType.WATER],
  //   );

  // Sum the water intake in milliliters for every 2-hour period
  // double totalIntake = 0.0;
  // for (var i = 0; i < 5; i++) {
  //   final periodStart = now.subtract(Duration(hours: 10 - i * 2));
  //   final periodEnd = now.subtract(Duration(hours: 10 - i * 2 - 2));
  //   final periodData = data.where((d) =>
  //       d.type == HealthDataType.WATER &&
  //       d.dateFrom.isAfter(periodEnd) &&
  //       d.dateFrom.isBefore(periodStart));
  //   final periodIntake = periodData.fold<double>(
  //       0.0, (sum, d) => sum + d.unitValue!.toDouble());
  //   totalIntake += periodIntake;
  // }

  // Convert the total intake to liters and update the state
  //   final liters = totalIntake / 1000.0;
  //   setState(() {
  //     _waterIntake = liters;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: LinearPercentIndicator(
        width: 275,
        animation: true,
        lineHeight: 20,
        animationDuration: 2000,
        percent: _waterIntake / widget.maxWaterIntake,
        linearGradient:const LinearGradient(
        stops: [0.0, 1.0],
        colors: [
          AppStyles.secondaryGradient,
          AppStyles.secondaryColorGradientOne,
        ],
      
    ),
    barRadius: const Radius.circular(30),
    backgroundColor: AppStyles.progressBackgroundColors,
      ),
    );
  }
}



