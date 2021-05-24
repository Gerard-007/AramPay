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
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              // User Name & service number display
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.25,
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
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gerard Nwazk",
                            style:
                                TextStyle(fontFamily: 'avenir', fontSize: 25),
                          ),
                          Text(
                            "SN08186612324",
                            style:
                                TextStyle(fontFamily: 'avenir', fontSize: 20),
                          ),
                          Text(
                            "Male",
                            style:
                                TextStyle(fontFamily: 'avenir', fontSize: 15),
                          ),
                          Text(
                            "Age 30",
                            style:
                                TextStyle(fontFamily: 'avenir', fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Material(
                  color: Colors.white,
                  elevation: 15.0,
                  borderRadius: BorderRadius.circular(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Loans: 3",
                          style: TextStyle(fontFamily: 'avenir', fontSize: 20)),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Pending: 3",
                          style: TextStyle(fontFamily: 'avenir', fontSize: 20)),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Canceled: 0",
                          style: TextStyle(fontFamily: 'avenir', fontSize: 20)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width * 0.9,
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
                          "Loan History",
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
                                    color: kButtonColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    color: kButtonColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                    color: kButtonColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
      ),
    );
  }
}
