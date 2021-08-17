import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, //To Hide Debug Banner
      home: Scaffold(
        backgroundColor: Color(0xff11172b),
        appBar: AppBar(
          title: Text("Hello World"),
          backgroundColor: Color(0xffe0192b),
        ),
        body: Center(
          child: Text('Hello World',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 30,
              )),
        ),
      ),
    ),
  );
}
