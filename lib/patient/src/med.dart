import 'package:flutter/material.dart';
import 'package:immuno_ai/patient/src/ui/homepage/homepage.dart';
import 'package:immuno_ai/patient/src/global_bloc.dart';
import 'package:immuno_ai/patient/src/ui/homepage/homepage.dart';
import 'package:provider/provider.dart';

import 'global_bloc.dart';

class MedicineReminder extends StatefulWidget {
  @override
  _MedicineReminderState createState() => _MedicineReminderState();
}

class _MedicineReminderState extends State<MedicineReminder> {
  GlobalBloc globalBloc;

  void initState() {
    globalBloc = GlobalBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<GlobalBloc>.value(
      value: globalBloc,
      child: MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
