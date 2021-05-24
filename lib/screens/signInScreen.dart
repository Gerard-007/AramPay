import 'package:arampay/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:arampay/screens/sideBarScreen.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //================== Logo Here ==================
          Container(
            padding: EdgeInsets.only(right: 15, top: 50),
            child: BlackProjectLogo(),
          ),
          SizedBox(
            height: 100,
          ),
          //===================== Greeting Texts ==============
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, bottom: 4),
                child: Text(
                  "Good morning",
                  style: TextStyle(
                    fontFamily: "avenir",
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Welcome to a new day. \nHow can we help you today?",
                  style: TextStyle(fontFamily: 'avenir', fontSize: 16),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 70,
          ),
          //================ Signin Form Here ===============
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                alignment: Alignment.center,
                child: Form(
                  key: globalFormKey,
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
                            size: 35,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        onSaved: (input) => _loginRequestModel.password = input,
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
                          prefixIcon: Icon(
                            Icons.lock,
                            color: kPrimaryColor,
                            size: 35,
                          ),
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
                        height: 20.0,
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
                        height: 40.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (validateAndSave()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Processing Data')));
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return MainHomePage();
                              },
                            ));
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
                        /**save token data to shared preference*/
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 120, vertical: 20),
                          decoration: BoxDecoration(
                            color: kButtonColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
