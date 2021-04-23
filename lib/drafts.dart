// import 'package:arampay/common/constants.dart';
// import 'package:flutter/material.dart';

// class MainHomePage extends StatelessWidget {
//   // SystemChrome.setEnabledSystemUIOverlays([]),
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: mainHomepage(),
//       routes: {},
//     );
//   }
// }

// class mainHomepage extends StatefulWidget {
//   @override
//   _mainHomepageState createState() => _mainHomepageState();
// }

// class _mainHomepageState extends State<mainHomepage> {
//   final List<String> menuItems = ["Dashboard", "Profile", "Settings"];
//   final List<String> menuIcons = ["dashboard", "user", "settings"];

//   bool sideBarOpen = false;

//   double xOffset = 0;
//   double yOffset = 60;

//   void setSidebarState() {
//     setState(() {
//       xOffset = sideBarOpen ? 265 : 60;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: kBackgroundColor,
//         child: Container(
//           child: Stack(
//             children: <Widget>[
//               Container(
//                 width: double.infinity,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Container(
//                       child: Text("Search Bar"),
//                     ),
//                     Container(
//                       child: Expanded(
//                         child: new ListView.builder(
//                           itemCount: menuItems.length,
//                           itemBuilder: (context, index) => Container(
//                             color: kBackgroundColor,
//                             child: Row(
//                               children: <Widget>[
//                                 Container(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Image.asset(
//                                       "assets/${menuIcons[index]}.png"),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Text(
//                                     menuItems[index],
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       child: Text("logout"),
//                     ),
//                   ],
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   //Change Sidebar state
//                 },
//                 child: Container(
//                   transform: Matrix4.translationValues(xOffset, yOffset, 1.0),
//                   width: double.infinity,
//                   height: double.infinity,
//                   color: Colors.white,
//                   child: Center(
//                     child: Text("HomePage"),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
