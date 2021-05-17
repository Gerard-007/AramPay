import 'package:flutter/material.dart';

class GraphCardWidget extends StatelessWidget {
  final String title;
  final Color activeColor, fontColor;
  final bool isActive;
  final int activeIndex;

  const GraphCardWidget(
      {Key key,
      this.title,
      this.activeColor,
      this.fontColor,
      this.isActive,
      this.activeIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 6.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: activeColor,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: fontColor,
            fontFamily: 'avenir',
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class GraphListItems {
  static List<int> amountList = [20000, 30000, 50000, 60000];
  static List<String> strList = ["1-Month", "6-Months", "1-Year"];
}
