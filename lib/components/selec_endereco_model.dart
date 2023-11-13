import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'selec_endereco_widget.dart' show SelecEnderecoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelecEnderecoModel extends FlutterFlowModel<SelecEnderecoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // State field(s) for nomeende widget.
  FocusNode? nomeendeFocusNode;
  TextEditingController? nomeendeController;
  String? Function(BuildContext, String?)? nomeendeControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Text widget.
  EnderecosUserRecord? endcriado;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nomeendeFocusNode?.dispose();
    nomeendeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
