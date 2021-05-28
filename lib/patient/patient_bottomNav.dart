import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:immuno_ai/constants/colors.dart';
import 'package:immuno_ai/patient/health.dart';
import 'package:immuno_ai/patient/patient_home.dart';
import 'package:immuno_ai/patient/profile.dart';
import 'package:immuno_ai/patient/src/med.dart';
import 'package:immuno_ai/patient/src/models/medicine.dart';

class PBottomNav extends StatefulWidget {
  @override
  _PBottomNavState createState() => _PBottomNavState();
}

class _PBottomNavState extends State<PBottomNav> {
  List<Widget> _widgetOptions = <Widget>[
    PHome(),
    HealthReport(),
    Profile(),
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
          // Image.network(
          //   'https://image.flaticon.com/icons/png/512/3388/3388809.png',
          //   height: 20,
          //   width: 20,
          // ),
          Icon(
            Icons.home,
            size: 20,
            color: Color(0xffd84571),
          ),
          Icon(
            Icons.book,
            size: 20,
            color: Color(0xffd84571),
          ),
          Icon(
            Icons.person_outline,
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
