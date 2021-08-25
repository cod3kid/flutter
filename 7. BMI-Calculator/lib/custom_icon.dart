import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({this.icon, this.iconText});

  IconData icon;
  String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xff8d8e98),
          ),
        ),
      ],
    );
  }
}
