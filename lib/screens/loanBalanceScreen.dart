import 'package:arampay/common/constants.dart';
import 'package:arampay/screens/sideBarScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';

class LoanBalacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoanBalance(),
    );
  }
}

class LoanBalance extends StatefulWidget {
  @override
  _LoanBalanceState createState() => _LoanBalanceState();
}

class _LoanBalanceState extends State<LoanBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //======== Logo Widget here =========
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return MainHomePage();
                            },
                          ));
                        },
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    BlackProjectLogo(),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Instant Loan",
                        style: TextStyle(
                          fontFamily: "avenir",
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: "\nGet going with our multiple Loan",
                        style: TextStyle(
                          fontFamily: "avenir",
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //================ Balance Display Widget ===============
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(bottom: 50),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: Material(
                  color: kButtonColor,
                  //elevation: 14.0,
                  //borderRadius: BorderRadius.circular(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            //============ Percentage widget just edith the value/100==========
                            child: CircularProgressIndicator(
                              //----value input / 100 -----
                              value: 30 / 100,
                              strokeWidth: 6,
                              backgroundColor: Colors.white,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.blueGrey),
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            alignment: Alignment.center,
                            child: Text(
                              //------ input value here toplease convert toString()------
                              "30" + "%",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "avenir",
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "₦50,000",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Balance",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //===========Loan App;ication Button Link ===============
            Expanded(
              flex: 1,
              child: GestureDetector(
                //=== Routes to Loan application button link ===
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(bottom: 10, left: 30, right: 30),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: Material(
                    color: kButtonColor,
                    //elevation: 14.0,
                    borderRadius: BorderRadius.circular(45.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Apply For Loan",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //===========Loan App;ication Button Link ===============
            Expanded(
              flex: 1,
              child: GestureDetector(
                //=== Routes to Loan application button link ===
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(bottom: 10, left: 30, right: 30),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: Material(
                    color: kButtonColor,
                    //elevation: 14.0,
                    borderRadius: BorderRadius.circular(50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Apply For Loan",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //================= Loan Statement Link ==============
            Expanded(
              flex: 1,
              child: GestureDetector(
                //=== Routes to Loan application button link ===
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(bottom: 10, left: 30, right: 30),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: Material(
                    color: kButtonColor,
                    //elevation: 14.0,
                    borderRadius: BorderRadius.circular(45.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "My Loan Statement",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Get a loan and distribute to different accounts in any",
                      style: TextStyle(
                        fontFamily: "avenir",
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: "\nbank, with No extra charges, No transfer fee",
                      style: TextStyle(
                        fontFamily: "avenir",
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
