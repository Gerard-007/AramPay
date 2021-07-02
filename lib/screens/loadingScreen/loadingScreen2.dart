import 'package:arampay/common/constants.dart';
import 'package:flutter/material.dart';

class LoadingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loadingScreen2(),
    );
  }
}

class loadingScreen2 extends StatefulWidget {
  @override
  _loadingScreen2State createState() => _loadingScreen2State();
}

class _loadingScreen2State extends State<loadingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kButtonColor, Colors.orange],
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage("assets/credital logo2.png"),
            height: 150,
            width: 150,
          ),
        ),
      ),
    );
  }
}
