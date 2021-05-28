import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SymptomDiary extends StatefulWidget {
  @override
  SymptomDiaryState createState() => new SymptomDiaryState();
}

class SymptomDiaryState extends State<SymptomDiary> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  double _currentFatigueValue = 20;
  double _currentSleepValue = 20;
  double _currentHeadValue = 20;
  double _currentAppValue = 20;
  double _currentNaValue = 20;
  String fatigue = 'Not at all tired';
  String sleep = 'Slept well';
  String headache = 'No pain';
  String appetite = 'Bad Appetite';
  String nausea = 'Severely Sick';
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          elevation: 4,
          brightness: Brightness.light,
          backgroundColor: Color(0xffd84571),
          title: Text(
            'Symptom Diary',
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body: Container(
          child: new SingleChildScrollView(
            child: new ConstrainedBox(
              constraints: new BoxConstraints(),
              child: new Container(
                child: new Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(13, 13, 13, 13),
                              child: Column(children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Date: \27 May 2021',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(13, 13, 13, 13),
                              child: Column(children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'How are you feeling today?',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: new Image.asset(
                                          'assets/crying-1.png'),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon:
                                          new Image.asset('assets/unhappy.png'),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: new Image.asset('assets/sad.png'),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: new Image.asset('assets/angry.png'),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: new Image.asset('assets/happy.png'),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon:
                                          new Image.asset('assets/happy-1.png'),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 5, 5),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Fatigue',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text(
                                    '$fatigue',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Color(0xffd84571),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Slider(
                                    value: _currentFatigueValue,
                                    min: 0,
                                    max: 100,
                                    divisions: 5,
                                    activeColor: Color(0xffd84571),
                                    inactiveColor: Colors.red[200],
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentFatigueValue = value;
                                        if (value == 20) fatigue = 'Not tired';
                                        if (value == 40)
                                          fatigue = 'Faintly tired';
                                        if (value == 60) fatigue = 'Tired';
                                        if (value == 80) fatigue = 'Very Tired';
                                        if (value == 100) fatigue = 'Exhausted';
                                      });
                                      print(_currentFatigueValue);
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Not Tired',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Text(
                                        'Exhausted',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 5, 5),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Sleep Quality',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text(
                                    '$sleep',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Color(0xffd84571),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Slider(
                                    value: _currentSleepValue,
                                    min: 0,
                                    max: 100,
                                    divisions: 5,
                                    activeColor: Color(0xffd84571),
                                    inactiveColor: Colors.red[200],
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentSleepValue = value;
                                        if (value == 20) sleep = 'Slept badly';
                                        if (value == 40)
                                          sleep = 'Slept somwhat poorly';
                                        if (value == 60) sleep = 'Slept fine';
                                        if (value == 80)
                                          sleep = 'Slept moderately well';
                                        if (value == 100) sleep = 'Slept well';
                                      });
                                      print(_currentSleepValue);
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Slept Badly',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Text(
                                        'Slept Well',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 5, 5),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Headache',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text(
                                    '$headache',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Color(0xffd84571),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Slider(
                                    value: _currentHeadValue,
                                    min: 0,
                                    max: 100,
                                    divisions: 5,
                                    activeColor: Color(0xffd84571),
                                    inactiveColor: Colors.red[200],
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentHeadValue = value;
                                        if (value == 20) headache = 'No pain';
                                        if (value == 40) headache = 'Mild pain';
                                        if (value == 60)
                                          headache = 'Moderate pain';
                                        if (value == 80)
                                          headache = 'Very Intense';
                                        if (value == 100)
                                          headache = 'Worst possible pain';
                                      });
                                      print(_currentHeadValue);
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'No pain',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Text(
                                        'Worst',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 5, 5),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Appetite',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text(
                                    '$appetite',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Color(0xffd84571),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Slider(
                                    value: _currentAppValue,
                                    min: 0,
                                    max: 100,
                                    divisions: 5,
                                    activeColor: Color(0xffd84571),
                                    inactiveColor: Colors.red[200],
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentAppValue = value;
                                        if (value == 20)
                                          appetite = 'Bad Appetite';
                                        if (value == 40)
                                          appetite = 'Not Bad Appetite';
                                        if (value == 60)
                                          appetite = 'Moderate Appetite';
                                        if (value == 80)
                                          appetite = 'Good Appetite';
                                        if (value == 100)
                                          appetite = 'Excellent Appetite';
                                      });
                                      print(_currentAppValue);
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Bad',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Text(
                                        'Excellent',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 5, 5),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Nausea',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text(
                                    '$nausea',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Color(0xffd84571),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Slider(
                                    value: _currentNaValue,
                                    min: 0,
                                    max: 100,
                                    divisions: 5,
                                    activeColor: Color(0xffd84571),
                                    inactiveColor: Colors.red[200],
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentNaValue = value;
                                        if (value == 20)
                                          nausea = 'Bad Appetite';
                                        if (value == 40)
                                          nausea = 'Not Bad Appetite';
                                        if (value == 60)
                                          nausea = 'Moderate Appetite';
                                        if (value == 80)
                                          nausea = 'Good Appetite';
                                        if (value == 100)
                                          nausea = 'Excellent Appetite';
                                      });
                                      print(_currentNaValue);
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Severely Sick',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Text(
                                        'Not At all sick',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 40,
                      ),
                      // add form here
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
