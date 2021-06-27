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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
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
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
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
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 80),
                decoration: BoxDecoration(
                  color: kButtonColor,
                ),
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
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.blueGrey),
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
                          height: 10,
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
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                //=== Routes to Loan application button link ===
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: kButtonColor,
                  ),
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
              GestureDetector(
                //=== Routes to Loan application button link ===
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: kButtonColor,
                  ),
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
              GestureDetector(
                //=== Routes to Loan application button link ===
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: kButtonColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Other options",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
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
            ],
          ),
        ),
      ),
    );
  }
}
