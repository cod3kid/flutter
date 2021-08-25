import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xffeb1555);

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonText});
  final String buttonText;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttonText,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
