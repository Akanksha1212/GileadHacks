import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:immuno_ai/patient/src/med.dart';
import 'package:immuno_ai/patient/symptom.dart';

class DHome extends StatefulWidget {
  @override
  _DHomeState createState() => _DHomeState();
}

class _DHomeState extends State<DHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd84571),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/750x/0a/7f/46/0a7f46307cc0f4c6ba101e9ce2aa80e5.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Hi Alex",
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        "How are you doing today?",
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 26, 18, 0),
                  child: Image.network(
                    "https://image.flaticon.com/icons/png/512/4811/4811048.png",
                    height: 130,
                    width: 130,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          elevation: 2,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Color(0xffd84571),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          18.0, 18, 18, 0),
                                      child: Image.network(
                                        "https://image.flaticon.com/icons/png/512/3736/3736939.png",
                                        height: 130,
                                        width: 130,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Resources",
                                            style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 27,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "We have amazing \nresources to help you out",
                                            style: GoogleFonts.quicksand(
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          color: Colors.grey[100],
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          // decoration: BoxDecoration(
                          //   color: Color(0xffa5ddea),
                          //   borderRadius: BorderRadius.all(
                          //     Radius.circular(30),
                          //   ),
                          // ),
                          child: Center(
                            child: Text(
                              "  Service Centers",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 1,
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.network(
                                            'https://image.flaticon.com/icons/png/512/3736/3736649.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Blood Bank",
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 1,
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.network(
                                            'https://image.flaticon.com/icons/png/512/3736/3736615.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Test",
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 1,
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.network(
                                            'https://image.flaticon.com/icons/png/512/3736/3736705.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Drug Store",
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 1,
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.network(
                                            'https://image.flaticon.com/icons/png/512/3736/3736610.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Opiod",
                                    style: GoogleFonts.quicksand(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.network(
                          'https://image.freepik.com/free-vector/doctors-concept-illustration_114360-1515.jpg'),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
