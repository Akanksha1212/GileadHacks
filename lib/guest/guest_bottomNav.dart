import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:immuno_ai/constants/colors.dart';

import 'guest_home.dart';

class GBottomNav extends StatefulWidget {
  @override
  _GBottomNavState createState() => _GBottomNavState();
}

class _GBottomNavState extends State<GBottomNav> {
  List<Widget> _widgetOptions = <Widget>[
    GHome(),
    GHome(),
    GHome(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBluePurple,
      body: _widgetOptions[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,

        buttonBackgroundColor: Colors.white,
        backgroundColor: Color(0xff263284),
        // animationDuration: Duration(seconds: 1),
        // animationCurve: Curves.easeInOut,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 20,
            color: Color(0xff263284),
          ),
          Icon(
            Icons.money,
            size: 20,
            color: Color(0xff263284),
          ),
          Icon(
            Icons.book_outlined,
            size: 20,
            color: Color(0xff263284),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
