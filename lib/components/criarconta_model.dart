import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'criarconta_widget.dart' show CriarcontaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CriarcontaModel extends FlutterFlowModel<CriarcontaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nomeUser widget.
  FocusNode? nomeUserFocusNode;
  TextEditingController? nomeUserController;
  String? Function(BuildContext, String?)? nomeUserControllerValidator;
  // State field(s) for emailUser widget.
  FocusNode? emailUserFocusNode;
  TextEditingController? emailUserController;
  String? Function(BuildContext, String?)? emailUserControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;
  // State field(s) for confirmSenha widget.
  FocusNode? confirmSenhaFocusNode;
  TextEditingController? confirmSenhaController;
  late bool confirmSenhaVisibility;
  String? Function(BuildContext, String?)? confirmSenhaControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EnderecosUserRecord? criaend;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    senhaVisibility = false;
    confirmSenhaVisibility = false;
  }

  void dispose() {
    nomeUserFocusNode?.dispose();
    nomeUserController?.dispose();

    emailUserFocusNode?.dispose();
    emailUserController?.dispose();

    senhaFocusNode?.dispose();
    senhaController?.dispose();

    confirmSenhaFocusNode?.dispose();
    confirmSenhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
