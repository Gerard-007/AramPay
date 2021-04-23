import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

//const kBackgroundColor = Color(0xFF202020);
const kBackgroundColor = Colors.orange;
const kLayoutColor = Color(0xFF7CB342);
const kPrimaryColor = Colors.orange;

//Project logo custom widget...
class BlackProjectLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "Aram",
          style: TextStyle(
            fontSize: 25,
            fontFamily: "avenir",
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          width: 1,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.orange,
          ),
          child: Text(
            "Pay",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontFamily: "avenir",
              fontWeight: FontWeight.w900,
            ),
          ),
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
          Text(
            "Aram",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: "avenir",
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            width: 1,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.orange,
            ),
            child: Text(
              "Pay",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontFamily: "avenir",
                fontWeight: FontWeight.w900,
              ),
            ),
          )
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
                style: TextStyle(fontFamily: "avenir", fontSize: 10),
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
        color: kBackgroundColor,
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
