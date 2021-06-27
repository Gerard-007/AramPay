import 'package:arampay/common/constants.dart';
import 'package:arampay/screens/signInScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  //runApp(ProfilePage());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arampay Welcome Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
        brightness: Brightness.light,
        fontFamily: "avenir",
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
            fontSize: 12,
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

//=================== Welcome screen Starts here==============
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/homepage.jpg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Container(
          //color: Colors.green.withOpacity(0.2),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 270.0),
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //============== logo ===============
                  Expanded(child: WhiteProjectLogo()),
                  //============== Text writeups here ================
                  Expanded(
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/service description4.png"),
                      width: 170,
                      height: 50,
                    ),
                  ),
                  // RichText(
                  //   textAlign: TextAlign.center,
                  //   text: TextSpan(
                  //     text: "Special military intervention \nsupport loan\n",
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //       fontFamily: "avenir",
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 13,
                  //     ),
                  //   ),
                  // ),
                  //=================== Get started Button here===============
                  Expanded(
                    child: FittedBox(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return SigninScreen();
                            },
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.symmetric(
                              horizontal: 150, vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: kButtonColor,
                          ),
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'avenir',
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //=================Social media links here==============
                  Expanded(child: LightSocialLinks()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
