import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mensagens_widget.dart' show MensagensWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MensagensModel extends FlutterFlowModel<MensagensWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for msgenviar widget.
  FocusNode? msgenviarFocusNode;
  TextEditingController? msgenviarController;
  String? Function(BuildContext, String?)? msgenviarControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    msgenviarFocusNode?.dispose();
    msgenviarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
