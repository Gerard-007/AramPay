import 'package:arampay/common/constants.dart';
import 'package:flutter/material.dart';

import '../homeScreens/sideBarScreen.dart';

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
            //margin: EdgeInsets.only(top: 270.0),
            padding: EdgeInsets.all(16.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return MainHomePage();
                            },
                          ));
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                //============== logo ===============
                Expanded(
                  flex: 5,
                  child: OrangeProjectLogo(),
                ),
                //============== Text writeups here ================

                Expanded(
                  flex: 3,
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
    );
  }
}
