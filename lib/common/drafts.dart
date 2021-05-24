import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

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

Widget profilePage(BuildContext, context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 38),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        // Text(
        //   "My\nProfile",
        //   textAlign: TextAlign.center,
        //   style: TextStyle(fontSize: 25, fontFamily: "avenir"),
        // ),
        // SizedBox(
        //   height: 20,
        // ),
        Expanded(
          child: Container(
            //padding: EdgeInsets.only(left: 12, right: 12),
            height: MediaQuery.of(context).size.height * 0.30,
            child: LayoutBuilder(
              builder: (context, constraints) {
                double innerHeight = constraints.maxHeight;
                double innerWidth = constraints.maxWidth;
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: innerHeight * 0.68,
                        width: innerWidth,
                        child: Material(
                          color: Colors.white,
                          elevation: 14.0,
                          borderRadius: BorderRadius.circular(15.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                              ),
                              Text(
                                "Gerard Nwazk",
                                style: TextStyle(
                                  fontFamily: "avenir",
                                  fontSize: 30,
                                  //color: Colors.white,
                                ),
                              ),
                              Divider(
                                thickness: 2,
                                //color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Loans",
                                        style: TextStyle(
                                          fontFamily: 'avenir',
                                          fontSize: 21,
                                          //color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "10",
                                        style: TextStyle(
                                          fontFamily: 'avenir',
                                          fontSize: 21,
                                          //color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    child: Container(
                                      height: 30,
                                      width: 5,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Prending",
                                        style: TextStyle(
                                          fontFamily: 'avenir',
                                          fontSize: 21,
                                          //color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "5",
                                        style: TextStyle(
                                          fontFamily: 'avenir',
                                          fontSize: 21,
                                          //color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            // color: Colors.blueGrey
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/icons/military-icon-png-19282.png"),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        // Container(
        //   height: MediaQuery.of(context).size.height * 0.1,
        //   decoration: BoxDecoration(
        //     color: Colors.grey,
        //     borderRadius: BorderRadius.circular(30),
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text(
        //         "My Loans",
        //         style: TextStyle(
        //             fontFamily: 'avenir',
        //             fontSize: 20,
        //             color: Colors.white),
        //       ),
        //     ],
        //   ),
        // ),
        Container(
          height: MediaQuery.of(context).size.height * 0.32,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            //color: kLayoutColor,
          ),
          child: Material(
            color: Colors.white,
            elevation: 15.0,
            borderRadius: BorderRadius.circular(15.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "My loans",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w700),
                  ),
                  Divider(
                    thickness: 2.5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              color: kButtonColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "N40,000",
                                  style: TextStyle(
                                      fontFamily: "avenir",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  "24 Feb 2021",
                                  style: TextStyle(
                                      fontFamily: "avenir",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              color: kButtonColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "N40,000",
                                  style: TextStyle(
                                      fontFamily: "avenir",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  "24 Feb 2021",
                                  style: TextStyle(
                                      fontFamily: "avenir",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              color: kButtonColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "N40,000",
                                  style: TextStyle(
                                      fontFamily: "avenir",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  "24 Feb 2021",
                                  style: TextStyle(
                                    fontFamily: "avenir",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
