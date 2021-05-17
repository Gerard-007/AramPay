import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: successScreen(),
    );
  }
}

class successScreen extends StatefulWidget {
  @override
  _successScreenState createState() => _successScreenState();
}

class _successScreenState extends State<successScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Successful!",
              //textAlign: TextAlign.center,
              style: TextStyle(
                //fontFamily: "avenir",
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "Your account has been\ncredited with N50,000",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "avenir",
                fontSize: 25,
                //fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "Thanks for using\narampay",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "avenir",
                fontSize: 25,
                //fontWeight: FontWeight.w900,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage("assets/main logo1.png"),
                  width: 70,
                  height: 70,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Arampay",
                  style: TextStyle(
                    fontSize: 35,
                    //fontFamily: "avenir",
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            Text(
              "Nigeria’s mobile Military support\nintervention Loan app",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "avenir",
                fontSize: 14,
                //fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
