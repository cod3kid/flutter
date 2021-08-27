import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Blood Bank"),
        backgroundColor: Color(0xffe0172b),
      ),
      body: Container(
        padding:
            EdgeInsets.only(left: screenHeight / 16, right: screenHeight / 16),
        child: SvgPicture.asset("images/appHome.svg"),
      ),
    );
  }
}
