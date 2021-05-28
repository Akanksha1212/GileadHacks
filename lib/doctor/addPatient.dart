import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:permission_handler/permission_handler.dart';

class AddPatient extends StatefulWidget {
  @override
  _AddPatientState createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {
  TextEditingController _inputController;
  TextEditingController _outputController;

  @override
  initState() {
    super.initState();
    this._inputController = new TextEditingController();
    this._outputController = new TextEditingController();
  }

  Future _scan() async {
    await Permission.camera.request();
    String barcode = await scanner.scan();
    if (barcode == null) {
      print('nothing return.');
    } else {
      this._outputController.text = barcode;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffd84571),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Add Patient',
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: this._outputController,
              maxLines: 2,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.wrap_text),
                helperText: 'Patient Info will appear here.',
                hintText: 'Patient Info will appear here.',
                hintStyle: TextStyle(fontSize: 15),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 7, vertical: 15),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  elevation: 5,
                  color: Color(0xffd84571),
                  child: Text(
                    'Scan',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  onPressed: () {
                    _scan;
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => PBottomNav()),
                    // );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
            // Expanded(
            //   flex: 1,
            //   child: SizedBox(
            //     height: 120,
            //     child: InkWell(
            //       onTap: _scan,
            //       child: Card(
            //         child: Column(
            //           children: <Widget>[
            //             Expanded(
            //               flex: 2,
            //               child: Image.asset('images/scanner.png'),
            //             ),
            //             Divider(height: 20),
            //             Expanded(flex: 1, child: Text("Scan")),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
