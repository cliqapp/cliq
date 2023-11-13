import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'cat_selecionada_widget.dart' show CatSelecionadaWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class CatSelecionadaModel extends FlutterFlowModel<CatSelecionadaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for buscaempresa111 widget.
  FocusNode? buscaempresa111FocusNode;
  TextEditingController? buscaempresa111Controller;
  String? Function(BuildContext, String?)? buscaempresa111ControllerValidator;
  List<EmpresasRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    buscaempresa111FocusNode?.dispose();
    buscaempresa111Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
