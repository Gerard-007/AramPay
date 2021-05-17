import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';

//============= Test Chart Widget ======================
Widget weeklyChart(BuildContext context) {
  return Center(
    child: Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width * 0.9,
      child: BezierChart(
        bezierChartScale: BezierChartScale.CUSTOM,
        selectedValue: 30,
        xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
        footerValueBuilder: (double value) {
          return "${formatAsIntOrDouble(value)}wk";
        },
        series: const [
          BezierLine(
            label: "May",
            data: const [
              DataPoint<double>(value: 10, xAxis: 0),
              DataPoint<double>(value: 130, xAxis: 5),
              DataPoint<double>(value: 50, xAxis: 10),
              DataPoint<double>(value: 150, xAxis: 15),
              DataPoint<double>(value: 75, xAxis: 20),
              DataPoint<double>(value: 0, xAxis: 25),
              DataPoint<double>(value: 5, xAxis: 30),
              DataPoint<double>(value: 45, xAxis: 35),
            ],
          ),
        ],
        config: BezierChartConfig(
          startYAxisFromNonZeroValue: false,
          bubbleIndicatorColor: Colors.orange.withOpacity(0.9),
          footerHeight: 40,
          verticalIndicatorStrokeWidth: 4.0,
          verticalIndicatorColor: Colors.black26,
          showVerticalIndicator: true,
          verticalIndicatorFixedPosition: false,
          displayYAxis: true,
          stepsYAxis: 10,
          // backgroundGradient: LinearGradient(
          //   colors: [
          //     Colors.red[300],
          //     Colors.red[400],
          //     Colors.red[400],
          //     Colors.red[500],
          //     Colors.red,
          //   ],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
          snap: true,
        ),
      ),
    ),
  );
}
