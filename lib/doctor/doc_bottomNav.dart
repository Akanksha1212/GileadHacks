import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:immuno_ai/constants/colors.dart';
import 'package:immuno_ai/doctor/addPatient.dart';
import 'package:immuno_ai/doctor/docProfile.dart';

import 'doc_home.dart';

class DBottomNav extends StatefulWidget {
  @override
  _DBottomNavState createState() => _DBottomNavState();
}

class _DBottomNavState extends State<DBottomNav> {
  List<Widget> _widgetOptions = <Widget>[
    DHome(),
    AddPatient(),
    DocProfile(),
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
        backgroundColor: Color(0xffd84571),
        // animationDuration: Duration(seconds: 1),
        // animationCurve: Curves.easeInOut,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 20,
            color: Color(0xffd84571),
          ),
          Icon(
            Icons.add,
            size: 20,
            color: Color(0xffd84571),
          ),
          Icon(
            Icons.person,
            size: 20,
            color: Color(0xffd84571),
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
