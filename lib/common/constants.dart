import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

//const kBackgroundColor = Color(0xFF202020);
//const kBackgroundColor = Colors.orange;
const kLayoutColor = Color(0xFF7CB342);
const kPrimaryColor = Color(0xFFFF6F00);

//Project logo custom widget...
class BlackProjectLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image(
          fit: BoxFit.contain,
          image: AssetImage("assets/icons/credital font.png"),
          width: 70,
          height: 100,
        ),
        SizedBox(
          width: 10,
        ),
        Image(
          fit: BoxFit.contain,
          image: AssetImage("assets/icons/credital_logo.png"),
          width: 50,
          height: 50,
        )
      ],
    );
  }
}

class WhiteProjectLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            fit: BoxFit.contain,
            image: AssetImage("assets/icons/credital_logo.png"),
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}

class SocialLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
        SizedBox(
          height: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Powered by Paycacura System Inc.",
                style: TextStyle(
                  fontFamily: "avenir",
                  fontSize: 10,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class LightSocialLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 6, right: 6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: new Icon(
                MdiIcons.facebook,
                color: Colors.white,
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
                  color: Colors.white,
                ),
              ),
              child: new Icon(
                MdiIcons.google,
                color: Colors.white,
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
                  color: Colors.white,
                ),
              ),
              child: new Icon(
                MdiIcons.twitter,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Powered by Paycacura System Inc.",
                style: TextStyle(
                  fontFamily: "avenir",
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SearchContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Container(
        color: kPrimaryColor,
        child: Row(
          children: <Widget>[
            GestureDetector(
              // onTap: () {
              //   sidebarOpen = true;
              //   setSidebarState();
              // },
              child: Container(
                padding: EdgeInsets.all(20),
                child: new Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                    hintText: "Search here...",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
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
