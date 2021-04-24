import 'package:arampay/common/constants.dart';
import 'package:arampay/screens/profile.dart';
import 'package:arampay/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'home.dart';

class MainHomePage extends StatelessWidget {
  // SystemChrome.setEnabledSystemUIOverlays([]),
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainHomepage(),
      // routes: {
      //   '/homePageScreen': (context) => HomePage(),
      //   '/profilePageScreen': (context) => ProfilePage(),
      //   '/settingsPageScreen': (context) => SettingsPage(),
      // },
    );
  }
}

class mainHomepage extends StatefulWidget {
  @override
  _mainHomepageState createState() => _mainHomepageState();
}

class _mainHomepageState extends State<mainHomepage> {
  final List<String> menuItems = ["home", "profile", "settings"];
  final List<String> menuIcons = ["home", "account", "setCenter"];

  bool sidebarOpen = false;

  double yOffset = 0;
  double xOffset = 60;
  double pageScale = 1;

  int selectedMenuItem = 0;

  String pageTitle = "Homepage";
  String currentPage = "homePageScreen";
  // HomePage homePageScreen = new HomePage();
  // ProfilePage profilePageScreen = new ProfilePage();
  // SettingsPage settingsPageScreen = new SettingsPage();

  void setSidebarState() {
    setState(() {
      xOffset = sidebarOpen ? 200 : 0;
      yOffset = sidebarOpen ? 70 : 0;
      pageScale = sidebarOpen ? 0.8 : 1;
    });
  }

  void setPageTitle() {
    switch (selectedMenuItem) {
      case 0:
        pageTitle = "Homepage";
        break;
      case 1:
        pageTitle = "Profile";
        break;
      case 2:
        pageTitle = "Settings";
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    //Search Container was here...
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Expanded(
                        child: new ListView.builder(
                          itemCount: menuItems.length,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              sidebarOpen = false;
                              selectedMenuItem = index;
                              setSidebarState();
                              setPageTitle();
                            },
                            child: MenuItem(
                              itemIcon: menuIcons[index],
                              itemText: menuItems[index],
                              selected: selectedMenuItem,
                              position: index,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: MenuItem(
                        itemIcon: "logout",
                        itemText: "logout",
                        selected: selectedMenuItem,
                        position: menuItems.length + 1,
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedContainer(
                //curve: Curves.easeInOut,
                duration: Duration(milliseconds: 200),
                transform: Matrix4.translationValues(xOffset, yOffset, 1.0)
                  ..scale(pageScale),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: sidebarOpen
                      ? BorderRadius.circular(20)
                      : BorderRadius.circular(0),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 60,
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              //Change Sidebar State
                              sidebarOpen = !sidebarOpen;
                              setSidebarState();
                            },
                            child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(20),
                              child: Icon(
                                Icons.menu,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            child: Text(
                              pageTitle,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    PageNavigation(
                      //add somthing here...
                      currentPage: currentPage,
                      selectedPage: selectedMenuItem,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String itemText;
  final String itemIcon;
  final int selected;
  final int position;

  MenuItem({this.itemText, this.itemIcon, this.selected, this.position});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: selected == position ? Color(0xFFB151E26) : kBackgroundColor,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: new Icon(
              MdiIcons.fromString(
                itemIcon,
              ),
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              itemText,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageNavigation extends StatelessWidget {
  String currentPage = "homePageScreen";
  int selectedPage = 0;

  PageNavigation({this.currentPage, this.selectedPage});

  @override
  Widget build(BuildContext context) {
    switch (selectedPage) {
      case 0:
        return HomePage();
        break;
      case 1:
        return ProfilePage();
        break;
      case 2:
        return SettingsPage();
        break;
      default:
    }
  }
}
