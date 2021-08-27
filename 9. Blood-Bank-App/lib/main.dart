import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'Pages/AddUser.dart';
import 'Pages/DonorList.dart';
import 'Pages/HomePage.dart';
import 'Pages/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ff_navigation_bar Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 1;

  final HomePage _homePage = HomePage();
  final DonorListPage _donorlistPage = new DonorListPage();
  final AddUserPage _adduserPage = new AddUserPage();

  Widget _showPage = new HomePage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _adduserPage;
        break;
      case 1:
        return _homePage;
        break;
      case 2:
        return _donorlistPage;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _showPage,
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.transparent,
          selectedItemBackgroundColor: Colors.green,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
          showSelectedItemShadow: false,
          barHeight: 57,
        ),
        selectedIndex: pageIndex,
        onSelectTab: (tappedIndex) {
          setState(() {
            pageIndex = tappedIndex;
            _showPage = _pageChooser(tappedIndex);
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.add,
            label: 'Add Donor',
            selectedBackgroundColor: Color(0xffe0172b),
          ),
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
            selectedBackgroundColor: Color(0xffe0172b),
          ),
          FFNavigationBarItem(
            iconData: Icons.people,
            label: 'Donors',
            selectedBackgroundColor: Color(0xffe0172b),
          ),
        ],
      ),
    );
  }
}
