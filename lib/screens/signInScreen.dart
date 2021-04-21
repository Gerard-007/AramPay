import 'package:arampay/api/apiService.dart';
import 'package:arampay/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../common/ProgressHUD.dart';
import '../models/loginModel.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signinScreen(),
      routes: {
        //'/mainHomepage': (context) => homeWithSideBar(),
      },
    );
  }
}

//50Le@d17Sp@ce

class signinScreen extends StatefulWidget {
  @override
  _signinScreenState createState() => _signinScreenState();
}

class _signinScreenState extends State<signinScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
  bool hidePassword = true;
  bool isAPICallProcess = false;
  LoginRequestModel _loginRequestModel;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    _loginRequestModel = new LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _uiSetup(context),
      inAsyncCall: isAPICallProcess,
      opacity: 0.3,
    );
  }

  @override
  Widget _uiSetup(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BlackProjectLogo(),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, bottom: 4),
            child: Text(
              "Good morning",
              style: TextStyle(
                fontFamily: "avenir",
                fontSize: 30,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Welcome to a new day. \nHow can we help you today?",
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                alignment: Alignment.center,
                child: Form(
                  key: globalFormKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.text,
                          onSaved: (input) =>
                              _loginRequestModel.serviceNumber = input,
                          validator: (input) =>
                              input.isEmpty ? "Invalid service number" : null,
                          decoration: InputDecoration(
                            labelText: "Service Number",
                            labelStyle: TextStyle(
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: kPrimaryColor)),
                            prefixIcon: Icon(
                              Icons.computer,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 20.0,
                        // ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          onSaved: (input) =>
                              _loginRequestModel.password = input,
                          validator: (input) => input.length < 6
                              ? "Password Should Be Six(6) Characters and Above"
                              : null,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kPrimaryColor),
                            ),
                            prefixIcon: Icon(Icons.lock, color: kPrimaryColor),
                            suffixIcon: IconButton(
                              icon: Icon(hidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                            ),
                          ),
                          obscureText: hidePassword,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(top: 5),
                          child: InkWell(
                            child: Text(
                              "Forgot password?...",
                              style: TextStyle(
                                fontFamily: "avenir",
                                fontSize: 12,
                                color: kPrimaryColor,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              if (validateAndSave()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Processing Data')));
                                //scaffoldKey.currentState.showSnackBar(snackBar);
                              }
                            },
                            // onTap: () {
                            //   if (validateAndSave()) {
                            //     setState(() {
                            //       isAPICallProcess = true;
                            //     });
                            //     APIService apiService = new APIService();
                            //     apiService.login(_loginRequestModel).then((value) {
                            //       setState(() {
                            //         isAPICallProcess = false;
                            //       });

                            //       if (value.token.isNotEmpty) {
                            //         final snackBar = SnackBar(
                            //           content: Text("Account SignIn Successful!"),
                            //         );
                            //         //save token data to shared preference
                            //         addObjectToSharedPreference(value);
                            //         openMainHomepage();
                            //         scaffoldKey.currentState.showSnackBar(snackBar);
                            //       } else {
                            //         final snackBar = SnackBar(
                            //           content: Text(value.error),
                            //         );
                            //         scaffoldKey.currentState.showSnackBar(snackBar);
                            //       }
                            //     });
                            //   }
                            // },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 25),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 26, vertical: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: kPrimaryColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Login",
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
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kPrimaryColor.withOpacity(.8),
                        ),
                      ),
                      child: new Icon(
                        MdiIcons.facebook,
                        color: kPrimaryColor.withOpacity(.8),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kPrimaryColor.withOpacity(.8),
                        ),
                      ),
                      child: new Icon(
                        MdiIcons.google,
                        color: kPrimaryColor.withOpacity(.8),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kPrimaryColor.withOpacity(.8),
                        ),
                      ),
                      child: new Icon(
                        MdiIcons.twitter,
                        color: kPrimaryColor.withOpacity(.8),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 3,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Powered by Paycacura System Inc.",
                        style: TextStyle(fontFamily: "avenir", fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  // addObjectToSharedPreference(value) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   preferences.setString('token', value.token);
  // }

  // void openMainHomepage() {
  //   Navigator.pushNamed(context, '/mainHomepage');
  // }

}
