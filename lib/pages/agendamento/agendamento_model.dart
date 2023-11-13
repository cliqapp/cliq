import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'agendamento_widget.dart' show AgendamentoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgendamentoModel extends FlutterFlowModel<AgendamentoWidget> {
  ///  Local state fields for this page.

  List<DateTime> listahoras = [];
  void addToListahoras(DateTime item) => listahoras.add(item);
  void removeFromListahoras(DateTime item) => listahoras.remove(item);
  void removeAtIndexFromListahoras(int index) => listahoras.removeAt(index);
  void insertAtIndexInListahoras(int index, DateTime item) =>
      listahoras.insert(index, item);
  void updateListahorasAtIndex(int index, Function(DateTime) updateFn) =>
      listahoras[index] = updateFn(listahoras[index]);

  DateTime? iData;

  int? contador;

  DateTime? dataselec;

  DocumentReference? funcionarioselec;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
