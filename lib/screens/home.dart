import 'package:arampay/common/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        //===================== Instant Loan Box Here =================
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: () {
              //======== Routing goes here ========...
            },
            child: Container(
              child: FittedBox(
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(15.0),
                  shadowColor: kBackgroundColor,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1,
                          vertical: 40,
                        ),
                        margin: EdgeInsets.only(left: 20),
                        color: kLayoutColor,
                      ),
                      SizedBox(
                        width: 12,
                        height: 100,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        child: RichText(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Instant Loan\n",
                                style: TextStyle(
                                  fontFamily: "avenir",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "Get your day going with our instant micro loan from\n N1000 - N50,000 and pay in 14days, with no stress",
                                style: TextStyle(
                                    fontFamily: "avenir",
                                    fontSize: 11,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        //===================== Target Savings Box Here =================
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              //======== Routing goes here ========
            },
            child: Container(
              child: FittedBox(
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(15.0),
                  shadowColor: kBackgroundColor,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1,
                          vertical: 40,
                        ),
                        margin: EdgeInsets.only(left: 20),
                        color: Colors.orange,
                      ),
                      SizedBox(
                        // width: 5,
                        height: 100,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        child: RichText(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Target Savings\n",
                                style: TextStyle(
                                  fontFamily: "avenir",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "join our save for tomorrow savings and build your fund\n with our target mobile savings",
                                style: TextStyle(
                                  fontFamily: "avenir",
                                  fontSize: 11,
                                  color: Colors.black,
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
            ),
          ),
        ),

        //===================== Amsurance Box Here =================
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              //======= Routing goes here ======
            },
            child: Container(
              child: FittedBox(
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(15.0),
                  shadowColor: kBackgroundColor,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1,
                          vertical: 40,
                        ),
                        margin: EdgeInsets.only(left: 20),
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        // width: 5,
                        height: 100,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        child: RichText(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Armsurance\n",
                                style: TextStyle(
                                  fontFamily: "avenir",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "Insure 0.2% of every loan you take and get premium\n assurance for your future, because, family is important",
                                style: TextStyle(
                                    fontFamily: "avenir",
                                    fontSize: 11,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
