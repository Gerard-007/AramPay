import 'package:arampay/api/apiService.dart';
import 'package:arampay/common/constants.dart';
import 'package:arampay/models/borrowerData.dart';
import 'package:arampay/models/user.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool circular = true;
  APIService _apiService = APIService();
  User _user = User();
  BorrowerData _borrowerData = BorrowerData();

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    fetchBorrowerData();
  }

  void fetchBorrowerData() async {
    var responseData = await _apiService.get('/api/borrower/details/retrieve/');
    var response = await _apiService.get('/api/accounts/retrieve/');
    setState(() {
      _borrowerData = BorrowerData.fromJson(responseData['data'][0]);
      _user = User.fromJson(response['data'][0]);
      circular = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
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
                            "${_user.name}",
                            style:
                                TextStyle(fontFamily: 'avenir', fontSize: 25),
                          ),
                          Text(
                            "BVN: ${_borrowerData.bvn}",
                            style:
                                TextStyle(fontFamily: 'avenir', fontSize: 20),
                          ),
                          Text(
                            "${_user.gender}",
                            style:
                                TextStyle(fontFamily: 'avenir', fontSize: 15),
                          ),
                          Text(
                            "${_borrowerData.age}",
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
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Country: ${_borrowerData.country}",
                          style: TextStyle(fontFamily: 'avenir', fontSize: 20)),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "Status: ${_borrowerData.workingStatus == 'Employed' ? 'Active Duty' : 'Not Active'}",
                          style: TextStyle(fontFamily: 'avenir', fontSize: 20)),
                      SizedBox(
                        height: 20,
                      ),
                      Text("NIN: ${_borrowerData.nin}",
                          style: TextStyle(fontFamily: 'avenir', fontSize: 20)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.39,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //color: kLayoutColor,
                ),
                child: Material(
                  color: Colors.white,
                  elevation: 10.0,
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
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  decoration: BoxDecoration(
                                    color: kButtonColor,
                                    borderRadius: BorderRadius.circular(40),
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
                                        currentTime(),
                                        style: TextStyle(
                                            fontFamily: "avenir",
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  decoration: BoxDecoration(
                                    color: kButtonColor,
                                    borderRadius: BorderRadius.circular(40),
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
                                        currentTime(),
                                        style: TextStyle(
                                            fontFamily: "avenir",
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  decoration: BoxDecoration(
                                    color: kButtonColor,
                                    borderRadius: BorderRadius.circular(40),
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
                                        currentTime(),
                                        style: TextStyle(
                                            fontFamily: "avenir",
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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

String currentTime() {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  final String formatted = formatter.format(now);
  return formatted;
}
