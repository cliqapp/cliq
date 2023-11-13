import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selec_endereco_model.dart';
export 'selec_endereco_model.dart';

class SelecEnderecoWidget extends StatefulWidget {
  const SelecEnderecoWidget({Key? key}) : super(key: key);

  @override
  _SelecEnderecoWidgetState createState() => _SelecEnderecoWidgetState();
}

class _SelecEnderecoWidgetState extends State<SelecEnderecoWidget> {
  late SelecEnderecoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelecEnderecoModel());

    _model.nomeendeController ??= TextEditingController();
    _model.nomeendeFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Form(
        key: _model.formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 600.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 12.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 5.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 24.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: Icon(
                                Icons.chevron_left,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 36.0,
                              ),
                            ),
                          ),
                          if (!(Theme.of(context).brightness ==
                              Brightness.dark))
                            Align(
                              alignment: AlignmentDirectional(0.06, -0.85),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 24.0, 0.0),
                                child: Image.asset(
                                  'assets/images/Cliq_(1).png',
                                  width: 170.0,
                                  height: 70.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          if (Theme.of(context).brightness == Brightness.dark)
                            Align(
                              alignment: AlignmentDirectional(0.06, -0.85),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 24.0, 0.0),
                                child: Image.asset(
                                  'assets/images/Cliq.png',
                                  width: 170.0,
                                  height: 70.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Selecionar endereço',
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Registrar novo endereço:',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          FlutterFlowPlacePicker(
                            iOSGoogleMapsApiKey:
                                'AIzaSyBtJkN85M6K7Bn4N9RG4oxpXb13G-FKnrY',
                            androidGoogleMapsApiKey:
                                'AIzaSyCM7LzPYqrdtF8Ez2OEBwHKbmmDx7IZZOI',
                            webGoogleMapsApiKey:
                                'AIzaSyDxZyeBtZF8jFOMglF73ZU8fIuw4zXthKI',
                            onSelect: (place) async {
                              setState(() => _model.placePickerValue = place);
                            },
                            defaultText: 'Escolher endereço',
                            icon: Icon(
                              Icons.place,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                            buttonOptions: FFButtonOptions(
                              width: 200.0,
                              height: 40.0,
                              color: Color(0xFF5EC8D6),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              elevation: 2.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (_model.placePickerValue.name != null &&
                        _model.placePickerValue.name != '')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 12.0, 24.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              child: Text(
                                'De um nome para o endereço:',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            TextFormField(
                              controller: _model.nomeendeController,
                              focusNode: _model.nomeendeFocusNode,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Escreva aqui...',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.nomeendeControllerValidator
                                  .asValidator(context),
                            ),
                          ],
                        ),
                      ),
                    if (_model.placePickerValue.name != null &&
                        _model.placePickerValue.name != '')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if ((_model.nomeendeController.text != null &&
                                    _model.nomeendeController.text != '') &&
                                (_model.placePickerValue.name != null &&
                                    _model.placePickerValue.name != '')) {
                              var enderecosUserRecordReference =
                                  EnderecosUserRecord.createDoc(
                                      currentUserReference!);
                              await enderecosUserRecordReference
                                  .set(createEnderecosUserRecordData(
                                nomeEnd: _model.nomeendeController.text,
                                ruanumero: _model.placePickerValue.name,
                                cidadeUF: '${_model.placePickerValue.state}',
                                localizacao: _model.placePickerValue.latLng,
                                datacriacao: getCurrentTimestamp,
                                bairro: _model.placePickerValue.city,
                              ));
                              _model.endcriado =
                                  EnderecosUserRecord.getDocumentFromData(
                                      createEnderecosUserRecordData(
                                        nomeEnd: _model.nomeendeController.text,
                                        ruanumero: _model.placePickerValue.name,
                                        cidadeUF:
                                            '${_model.placePickerValue.state}',
                                        localizacao:
                                            _model.placePickerValue.latLng,
                                        datacriacao: getCurrentTimestamp,
                                        bairro: _model.placePickerValue.city,
                                      ),
                                      enderecosUserRecordReference);

                              await currentUserReference!
                                  .update(createUsersRecordData(
                                refendereco: _model.endcriado?.reference,
                              ));
                              setState(() {
                                _model.nomeendeController?.clear();
                              });
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('AVISO:'),
                                    content: Text('Escolher nome/localização'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }

                            setState(() {});
                          },
                          child: Text(
                            'Salvar novo endereço',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    Align(
                      alignment: AlignmentDirectional(-1.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 12.0, 24.0, 12.0),
                        child: Text(
                          'Meus endereços:',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: StreamBuilder<List<EnderecosUserRecord>>(
                        stream: queryEnderecosUserRecord(
                          parent: currentUserReference,
                          queryBuilder: (enderecosUserRecord) =>
                              enderecosUserRecord.orderBy('datacriacao',
                                  descending: true),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<EnderecosUserRecord>
                              listViewEnderecosUserRecordList = snapshot.data!;
                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewEnderecosUserRecordList.length,
                            separatorBuilder: (_, __) => SizedBox(height: 10.0),
                            itemBuilder: (context, listViewIndex) {
                              final listViewEnderecosUserRecord =
                                  listViewEnderecosUserRecordList[
                                      listViewIndex];
                              return AuthUserStreamWidget(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await currentUserReference!
                                        .update(createUsersRecordData(
                                      refendereco:
                                          listViewEnderecosUserRecord.reference,
                                    ));
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          currentUserDocument?.refendereco ==
                                                  listViewEnderecosUserRecord
                                                      .reference
                                              ? FlutterFlowTheme.of(context)
                                                  .error
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.maps_home_work_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                listViewEnderecosUserRecord
                                                    .nomeEnd,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              Text(
                                                listViewEnderecosUserRecord
                                                    .ruanumero,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  listViewEnderecosUserRecord
                                                      .bairro,
                                                  's/ bairro',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              if (currentUserDocument
                                                      ?.refendereco ==
                                                  listViewEnderecosUserRecord
                                                      .reference)
                                                Icon(
                                                  Icons.check_circle_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 24.0,
                                                ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await listViewEnderecosUserRecord
                                                      .reference
                                                      .delete();
                                                },
                                                child: Icon(
                                                  Icons.delete_forever_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
