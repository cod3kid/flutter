import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFC766A),
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Color(0xff5B84B1),
        ),
        body: SafeArea(
          child: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 32.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    diceNumber = Random().nextInt(6) + 1;
                  });

                  print('dice is pressed $diceNumber');
                },
                child: Image(
                  image: AssetImage('images/dice$diceNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
