import 'package:flutter/material.dart';
import 'dart:math';

var imageNum = 0;
var p1 = 0;
var cpu = 0;
var winner = "";
var loser = "";
var beatsTied = "";
void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xff101820),
          appBar: AppBar(
            title: Text(
              'Rock Paper Scissors',
              style: TextStyle(
                color: Color(0xff000000),
              ),
            ),
            backgroundColor: Color(0xffFEE715),
          ),
          body: Rps(),
        ),
      ),
    );

class Rps extends StatefulWidget {
  @override
  _RpsState createState() => _RpsState();
}

class _RpsState extends State<Rps> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'P1',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color(0xffffffff),
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'CPU',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color(0xffffffff),
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                '$p1',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color(0xffffffff),
                ),
              ),
              Text(
                '$cpu',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color(0xffffffff),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      imageNum = Random().nextInt(3) + 1;
                      if (imageNum == 1) {
                        winner = "";
                        loser = "";
                        beatsTied = "Tied";
                      } else if (imageNum == 2) {
                        winner = "Paper";
                        beatsTied = "Beats";
                        loser = "Rock";
                        cpu++;
                      } else if (imageNum == 3) {
                        winner = "Rock";
                        beatsTied = "Beats";
                        loser = "Scissors";
                        p1++;
                      }
                    });
                    print('you pressed rock $imageNum');
                  },
                  child: Image(
                    image: AssetImage('images/i1.png'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      imageNum = Random().nextInt(3) + 1;

                      if (imageNum == 1) {
                        winner = "Paper";
                        beatsTied = "Beats";
                        loser = "Rock";
                        p1++;
                      } else if (imageNum == 2) {
                        winner = "";
                        beatsTied = "Tied";
                        loser = "";
                      } else if (imageNum == 3) {
                        winner = "Scissors";
                        beatsTied = "Beats";
                        loser = "Paper";
                        cpu++;
                      }
                    });
                    print('you pressed paper $imageNum');
                  },
                  child: Image(
                    image: AssetImage('images/i2.png'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      imageNum = Random().nextInt(3) + 1;

                      if (imageNum == 1) {
                        winner = "Rock";
                        beatsTied = "Beats";
                        loser = "Scissors";
                        cpu++;
                      } else if (imageNum == 2) {
                        winner = "Scissors";
                        beatsTied = "Beats";
                        loser = "Paper";
                        p1++;
                      } else if (imageNum == 3) {
                        winner = "";
                        beatsTied = "Tied";
                        loser = "";
                      }
                    });
                    print('you pressed scissors $imageNum');
                  },
                  child: Image(
                    image: AssetImage('images/i3.png'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Image(
            image: AssetImage('images/i$imageNum.png'),
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            '$winner $beatsTied $loser',
            style: TextStyle(color: Color(0xffffffff), fontSize: 30.0),
          )
        ],
      ),
    );
  }
}
