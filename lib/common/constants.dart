import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF202020);
const kPrimaryColor = Color(0xFF7CB342);

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
