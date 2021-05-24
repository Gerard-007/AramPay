import 'package:arampay/common/constants.dart';
import 'package:flutter/material.dart';

class PendingFeaturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [kButtonColor, Colors.orange]),
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
                    Expanded(child: OrangeProjectLogo()),
                    //============== Text writeups here ================

                    Expanded(
                      child: Text(
                        "This feature is still on development\nWe will update as soon as this \nfeature is ready",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "avenir",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    //=================Social media links here==============
                    Expanded(child: LightSocialLinks()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
