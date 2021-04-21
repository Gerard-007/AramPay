import 'package:arampay/common/constants.dart';
import 'package:arampay/screens/signInScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arampay Welcome Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        brightness: Brightness.light,
        textTheme: TextTheme(
          display1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'avenir',
          ),
          display2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
            fontFamily: 'avenir',
          ),
          button: TextStyle(
            color: kPrimaryColor,
          ),
          headline: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 15,
            fontFamily: 'avenir',
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/1000w_q95.jpg"),
                fit: BoxFit.fitHeight)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.brown.withOpacity(0.2),
                Colors.black.withOpacity(0.6)
              ],
              stops: [0.0, 1],
              begin: Alignment.topCenter,
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 490.0,
              margin: EdgeInsets.only(top: 400.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black38, Colors.blueGrey.withOpacity(0)],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  WhiteProjectLogo(),
                  Text(
                    "Special military/paramilitary instance \nintervention support loan.",
                    style: Theme.of(context).textTheme.headline,
                  ),
                  // RichText(
                  //   textAlign: TextAlign.center,
                  //   text: TextSpan(children: [
                  //     // TextSpan(
                  //     //     text: "AramPay\n",
                  //     //     style: Theme.of(context).textTheme.display1),
                  //     TextSpan(
                  //       text:
                  //           "Special military/paramilitary instance \nintervention support loan",
                  //       style: Theme.of(context).textTheme.headline,
                  //     ),
                  //   ]),
                  // ),
                  FittedBox(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return SigninScreen();
                          },
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 25),
                        padding:
                            EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: kPrimaryColor,
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Click here to start",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
