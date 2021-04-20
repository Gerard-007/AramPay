import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF202020);
const kPrimaryColor = Color(0xFF7CB342);

//Project logo custom widget...
class ProjectLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "Aram",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "avenir",
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          width: 1,
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.orange,
          ),
          child: Text(
            "Pay",
            style: TextStyle(
              fontSize: 20,
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