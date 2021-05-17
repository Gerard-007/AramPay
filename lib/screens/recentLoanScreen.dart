import 'package:arampay/common/graphCardWidget.dart';
import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecentLoanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: recentLoanScreen(),
    );
  }
}

class recentLoanScreen extends StatefulWidget {
  recentLoanScreen({Key key}) : super(key: key);
  @override
  _recentLoanScreenState createState() => _recentLoanScreenState();
}

class _recentLoanScreenState extends State<recentLoanScreen> {
  int selectedOptionIndex = 0;

  @override
  Widget build(BuildContext context) {
    //final numberFormat = new NumberFormat("##,###,00#", "en_US");
    bool btnActive = false;
    int activeNumber;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/123.jpg"), fit: BoxFit.fill),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(top: 60, left: 15, right: 15),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                  Text(
                    "Your Recent Loan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Running Loan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      //fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "₦50,000.00",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Center(
                    child: Container(
                      // margin: EdgeInsets.only(right: 50),
                      height: MediaQuery.of(context).size.height / 2.8,
                      width: MediaQuery.of(context).size.width,
                      child: BezierChart(
                        bezierChartScale: BezierChartScale.CUSTOM,
                        selectedValue: 1,
                        xAxisCustomValues: const [1, 2, 3, 4],
                        footerValueBuilder: (double value) {
                          return "week-${formatAsIntOrDouble(value)}";
                        },
                        series: const [
                          BezierLine(
                            label: "May",
                            lineColor: Colors.orange,
                            dataPointStrokeColor: Colors.white,
                            dataPointFillColor: Colors.orange,
                            lineStrokeWidth: 4,
                            data: const [
                              DataPoint<double>(value: 10, xAxis: 1),
                              DataPoint<double>(value: 30, xAxis: 2),
                              DataPoint<double>(value: 40, xAxis: 3),
                              DataPoint<double>(value: 20, xAxis: 4),
                              // DataPoint<double>(value: 30, xAxis: 5),
                              // DataPoint<double>(value: 40, xAxis: 6),
                              // DataPoint<double>(value: 10, xAxis: 7),
                              // DataPoint<double>(value: 20, xAxis: 8),
                            ],
                          ),
                        ],
                        config: BezierChartConfig(
                          startYAxisFromNonZeroValue: true,
                          verticalIndicatorFixedPosition: false,
                          bubbleIndicatorColor: Colors.black,
                          //showVerticalIndicator: true,
                          bubbleIndicatorLabelStyle:
                              TextStyle(color: Colors.white),
                          bubbleIndicatorTitleStyle:
                              TextStyle(color: Colors.white),
                          bubbleIndicatorValueStyle:
                              TextStyle(color: Colors.white),
                          footerHeight: 40,
                          displayYAxis: false,
                          stepsYAxis: 10,
                          displayLinesXAxis: false,
                          xAxisTextStyle: TextStyle(color: Colors.white),
                          // backgroundGradient: LinearGradient(
                          //   colors: [
                          //     Colors.blueGrey.withOpacity(0.3),
                          //     Colors.black.withOpacity(0.2),
                          //   ],
                          //   begin: Alignment.topCenter,
                          //   end: Alignment.bottomCenter,
                          // ),
                          snap: false,
                        ),
                      ),
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Container(
                  //       height: 50,
                  //       width: MediaQuery.of(context).size.width / 3.4,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20.0),
                  //         color: Colors.orange,
                  //       ),
                  //       child: Center(
                  //         child: Text(
                  //           "May",
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //             fontFamily: 'avenir',
                  //             fontSize: 15,
                  //             fontWeight: FontWeight.w600,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     GraphCardWidget(
                  //       title: GraphListItems.strList[0],
                  //       activeColor: Colors.black,
                  //       fontColor: Colors.grey,
                  //       isActive: btnActive,
                  //     ),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     GraphCardWidget(
                  //       title: GraphListItems.strList[1],
                  //       activeColor: Colors.black,
                  //       fontColor: Colors.grey,
                  //       isActive: btnActive,
                  //     ),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     GraphCardWidget(
                  //       title: GraphListItems.strList[2],
                  //       activeColor: Colors.black,
                  //       fontColor: Colors.grey,
                  //       isActive: btnActive,
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Loan Analysis",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 40, top: 25, bottom: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Loan Amount : ₦50,000.00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Loan Period : 15 days",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Due Date : 18-Nov-2021",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Interest Rate : 15% ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
