import 'package:flutter/material.dart';

class MainHomePage extends StatelessWidget {
  // SystemChrome.setEnabledSystemUIOverlays([]),
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainHomepage(),
      routes: {},
    );
  }
}

class mainHomepage extends StatefulWidget {
  @override
  _mainHomepageState createState() => _mainHomepageState();
}

class _mainHomepageState extends State<mainHomepage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
