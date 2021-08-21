import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(AlphabetApp());

class AlphabetApp extends StatefulWidget {
  @override
  _AlphabetAppState createState() => _AlphabetAppState();
}

class _AlphabetAppState extends State<AlphabetApp> {
  void playSound(var alphabet) {
    final player = AudioCache();
    player.play('$alphabet.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffEED971),
        appBar: AppBar(
          title: Text('Alphabets'),
          backgroundColor: Color(0xffFFA351),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.red,
                      onPressed: () {
                        playSound('A');
                      },
                      child: Text(
                        'A',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.orange,
                      onPressed: () {
                        playSound('B');
                      },
                      child: Text(
                        'B',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.yellow,
                      onPressed: () {
                        playSound('C');
                      },
                      child: Text(
                        'C',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        playSound('D');
                      },
                      child: Text(
                        'D',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.teal,
                      onPressed: () {
                        playSound('E');
                      },
                      child: Text(
                        'E',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        playSound('F');
                      },
                      child: Text(
                        'F',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.red,
                      onPressed: () {
                        playSound('G');
                      },
                      child: Text(
                        'G',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.orange,
                      onPressed: () {
                        playSound('H');
                      },
                      child: Text(
                        'H',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.yellow,
                      onPressed: () {
                        playSound('I');
                      },
                      child: Text(
                        'I',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        playSound('J');
                      },
                      child: Text(
                        'J',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.teal,
                      onPressed: () {
                        playSound('K');
                      },
                      child: Text(
                        'K',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        playSound('L');
                      },
                      child: Text(
                        'L',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.red,
                      onPressed: () {
                        playSound('M');
                      },
                      child: Text(
                        'M',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.orange,
                      onPressed: () {
                        playSound('N');
                      },
                      child: Text(
                        'N',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.yellow,
                      onPressed: () {
                        playSound('O');
                      },
                      child: Text(
                        'O',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        playSound('P');
                      },
                      child: Text(
                        'P',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.teal,
                      onPressed: () {
                        playSound('Q');
                      },
                      child: Text(
                        'Q',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        playSound('R');
                      },
                      child: Text(
                        'R',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.red,
                      onPressed: () {
                        playSound('S');
                      },
                      child: Text(
                        'S',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.orange,
                      onPressed: () {
                        playSound('T');
                      },
                      child: Text(
                        'T',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.yellow,
                      onPressed: () {
                        playSound('U');
                      },
                      child: Text(
                        'U',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        playSound('V');
                      },
                      child: Text(
                        'V',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.teal,
                      onPressed: () {
                        playSound('W');
                      },
                      child: Text(
                        'W',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        playSound('X');
                      },
                      child: Text(
                        'X',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.red,
                      onPressed: () {
                        playSound('Y');
                      },
                      child: Text(
                        'Y',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      color: Colors.orange,
                      onPressed: () {
                        playSound('Z');
                      },
                      child: Text(
                        'Z',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
