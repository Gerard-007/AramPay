import 'package:date_util/date_util.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

//const kBackgroundColor = Color(0xFF202020);
//const kBackgroundColor = Colors.orange;
const kLayoutColor = Color(0xFF01579B);
const kPrimaryColor = Color(0xFF827717);
const kButtonColor = Color.fromRGBO(255, 109, 0, 1);
int totalTreshold = 50000;
int loanBalance = 50000;
int recentAppliedLoan = 0;
int totalAppliedLoan = 0;

//Project logo custom widget...
class BlackProjectLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Image(
          fit: BoxFit.contain,
          image: AssetImage("assets/icons/credital_logo.png"),
          width: 40,
          height: 40,
        ),
      ],
    );
  }
}

class WhiteProjectLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage("assets/main logo1.png"),
            width: 70,
            height: 80,
            color: kButtonColor,
          ),
          SizedBox(
            width: 5,
          ),
          // Image(
          //   image: AssetImage("assets/name alone3.png"),
          //   width: 170,
          //   height: 70,
          // ),
          Text(
            "Arampay",
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontFamily: "avenir",
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class OrangeProjectLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage("assets/credital logo2.png"),
            width: 70,
            height: 80,
          ),
          SizedBox(
            width: 5,
          ),
          // Image(
          //   image: AssetImage("assets/name alone3.png"),
          //   width: 170,
          //   height: 70,
          // ),
          Text(
            "Arampay",
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontFamily: "avenir",
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class SocialLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 6, right: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: kPrimaryColor.withOpacity(.8),
                ),
              ),
              child: new Icon(
                MdiIcons.facebook,
                color: kPrimaryColor.withOpacity(.8),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 6, right: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: kPrimaryColor.withOpacity(.8),
                ),
              ),
              child: new Icon(
                MdiIcons.google,
                color: kPrimaryColor.withOpacity(.8),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 6, right: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: kPrimaryColor.withOpacity(.8),
                ),
              ),
              child: new Icon(
                MdiIcons.twitter,
                color: kPrimaryColor.withOpacity(.8),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Powered by Paycacura System Inc.",
                style: TextStyle(
                  fontFamily: "avenir",
                  fontSize: 15,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class LightSocialLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 6, right: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: new Icon(
                MdiIcons.facebook,
                color: Colors.white,
                size: 25,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 6, right: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: new Icon(
                MdiIcons.instagram,
                color: Colors.white,
                size: 25,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 6, right: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: new Icon(
                MdiIcons.twitter,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Powered by Paycacura System Inc.",
                style: TextStyle(
                  fontFamily: "avenir",
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SearchContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Container(
        color: kPrimaryColor,
        child: Row(
          children: <Widget>[
            GestureDetector(
              // onTap: () {
              //   sidebarOpen = true;
              //   setSidebarState();
              // },
              child: Container(
                padding: EdgeInsets.all(20),
                child: new Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                    hintText: "Search here...",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Get The time...
String getTime() {
  var now = DateTime.now().hour;
  print("Now $now");
  if (now >= 1 && now < 11) {
    return "Good Morning";
  } else if (now >= 12 && now < 16) {
    return "Good Afternoon";
  } else if (now > 17 && now < 23) {
    return "Good Evening";
  } else {
    return "Good Day";
  }
}

// Get Date
String getTodaysDate() {
  var dt = DateTime.now();
  var newDt = DateFormat.yMMMEd().format(dt);
  return newDt;
}

String getRepaymentDate() {
  var dateUtility = DateUtil();
  var getTodaysDate = int.parse(DateTime.now().day.toStringAsFixed(0));
  var numOfDays =
      dateUtility.daysInMonth(DateTime.now().month, DateTime.now().year);
  var daysDifference = numOfDays - getTodaysDate;
  print(daysDifference);
  var repaymentDate = DateTime.now().add(Duration(days: daysDifference));
  return DateFormat.yMMMEd().format(repaymentDate);
}

//==========Loan Transaction & Balance Logic==========

// String loanTransaction(lendingAmount) {
//   if (loanBalance < int.parse(lendingAmount)) {
//     return "Your request N$lendingAmount is higher than you allocated N$loanBalance balance";
//   } else {
//     loanBalance -= int.parse(lendingAmount);
//     return "Your loan request of N$lendingAmount was successful";
//   }
// }
