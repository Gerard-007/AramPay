import 'package:arampay/common/constants.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            // Text(
            //   "My\nProfile",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(fontSize: 25, fontFamily: "avenir"),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            Expanded(
              child: Container(
                //padding: EdgeInsets.only(left: 12, right: 12),
                height: MediaQuery.of(context).size.height * 0.30,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double innerHeight = constraints.maxHeight;
                    double innerWidth = constraints.maxWidth;
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: innerHeight * 0.68,
                            width: innerWidth,
                            child: Material(
                              color: Colors.white,
                              elevation: 14.0,
                              borderRadius: BorderRadius.circular(15.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 70,
                                  ),
                                  Text(
                                    "Gerard Nwazk",
                                    style: TextStyle(
                                      fontFamily: "avenir",
                                      fontSize: 30,
                                      //color: Colors.white,
                                    ),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    //color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Loans",
                                            style: TextStyle(
                                              fontFamily: 'avenir',
                                              fontSize: 21,
                                              //color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "10",
                                            style: TextStyle(
                                              fontFamily: 'avenir',
                                              fontSize: 21,
                                              //color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 5),
                                        child: Container(
                                          height: 30,
                                          width: 5,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Prending",
                                            style: TextStyle(
                                              fontFamily: 'avenir',
                                              fontSize: 21,
                                              //color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "5",
                                            style: TextStyle(
                                              fontFamily: 'avenir',
                                              fontSize: 21,
                                              //color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.18,
                              width: MediaQuery.of(context).size.width * 0.38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                // color: Colors.blueGrey
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/icons/military-icon-png-19282.png"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.1,
            //   decoration: BoxDecoration(
            //     color: Colors.grey,
            //     borderRadius: BorderRadius.circular(30),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text(
            //         "My Loans",
            //         style: TextStyle(
            //             fontFamily: 'avenir',
            //             fontSize: 20,
            //             color: Colors.white),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              height: MediaQuery.of(context).size.height * 0.32,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                //color: kLayoutColor,
              ),
              child: Material(
                color: Colors.white,
                elevation: 15.0,
                borderRadius: BorderRadius.circular(15.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "My loans",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'avenir',
                            fontWeight: FontWeight.w700),
                      ),
                      Divider(
                        thickness: 2.5,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "N40,000",
                                      style: TextStyle(
                                          fontFamily: "avenir",
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    Text(
                                      "24 Feb 2021",
                                      style: TextStyle(
                                          fontFamily: "avenir",
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "N40,000",
                                      style: TextStyle(
                                          fontFamily: "avenir",
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    Text(
                                      "24 Feb 2021",
                                      style: TextStyle(
                                          fontFamily: "avenir",
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "N40,000",
                                      style: TextStyle(
                                          fontFamily: "avenir",
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    Text(
                                      "24 Feb 2021",
                                      style: TextStyle(
                                        fontFamily: "avenir",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
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
