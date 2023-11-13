// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:date_picker_timeline/date_picker_timeline.dart';

class Datepicker2 extends StatefulWidget {
  const Datepicker2({
    Key? key,
    this.width,
    this.height,
    required this.colorselect,
    required this.colortext,
    required this.colorDesativada,
    required this.atualizarpag,
    required this.datainicial,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color colorselect;
  final Color colortext;
  final Color colorDesativada;
  final Future<dynamic> Function() atualizarpag;
  final DateTime datainicial;

  @override
  _Datepicker2State createState() => _Datepicker2State();
}

class _Datepicker2State extends State<Datepicker2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DatePicker(DateTime.now(),
            initialSelectedDate: widget.datainicial,
            selectionColor: widget.colorselect,
            selectedTextColor: widget.colortext,
            deactivatedColor: widget.colorDesativada, onDateChange: (date) {
          // New date selected
          setState(() {
            FFAppState().dateSelect = date;
          });
          widget.atualizarpag;
        }, locale: "pt_BR"),
      ],
    );
  }
}
