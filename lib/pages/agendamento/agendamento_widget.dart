import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'agendamento_model.dart';
export 'agendamento_model.dart';

class AgendamentoWidget extends StatefulWidget {
  const AgendamentoWidget({
    Key? key,
    this.agendaEmpresa,
    this.servico,
  }) : super(key: key);

  final DocumentReference? agendaEmpresa;
  final DocumentReference? servico;

  @override
  _AgendamentoWidgetState createState() => _AgendamentoWidgetState();
}

class _AgendamentoWidgetState extends State<AgendamentoWidget> {
  late AgendamentoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgendamentoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return StreamBuilder<EmpresasRecord>(
      stream: EmpresasRecord.getDocument(widget.agendaEmpresa!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final agendamentoEmpresasRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 25.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Agendamento',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  StreamBuilder<ServicoPacotesRecord>(
                    stream: ServicoPacotesRecord.getDocument(widget.servico!),
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
                      final textServicoPacotesRecord = snapshot.data!;
                      return Text(
                        textServicoPacotesRecord.nomeServico,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      );
                    },
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 10.0),
                      child: Text(
                        'Profissionais:',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 100.0,
                    decoration: BoxDecoration(),
                    child: StreamBuilder<List<ProfissionaisRecord>>(
                      stream: queryProfissionaisRecord(
                        parent: widget.agendaEmpresa,
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
                        List<ProfissionaisRecord>
                            listViewProfissionaisRecordList = snapshot.data!;
                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          itemCount: listViewProfissionaisRecordList.length,
                          separatorBuilder: (_, __) => SizedBox(width: 10.0),
                          itemBuilder: (context, listViewIndex) {
                            final listViewProfissionaisRecord =
                                listViewProfissionaisRecordList[listViewIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  _model.funcionarioselec =
                                      listViewProfissionaisRecord.reference;
                                  _model.dataselec = null;
                                });
                              },
                              child: Container(
                                width: 100.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: BoxDecoration(
                                  color:
                                      listViewProfissionaisRecord.reference ==
                                              _model.funcionarioselec
                                          ? FlutterFlowTheme.of(context).info
                                          : Color(0x00000000),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        listViewProfissionaisRecord.foto,
                                        width: 60.0,
                                        height: 60.0,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                Image.asset(
                                          'assets/images/error_image.png',
                                          width: 60.0,
                                          height: 60.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      listViewProfissionaisRecord.nome,
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: listViewProfissionaisRecord
                                                        .reference ==
                                                    _model.funcionarioselec
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryBtnText
                                                : FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 20.0, 15.0, 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Horários disponíveis',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Container(
                            width: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0x25EDEDED),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: FlutterFlowCalendar(
                              color: FlutterFlowTheme.of(context).primary,
                              iconColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              weekFormat: true,
                              weekStartsMonday: false,
                              initialDate: getCurrentTimestamp,
                              rowHeight: 64.0,
                              onChange: (DateTimeRange? newSelectedDate) async {
                                _model.calendarSelectedDay = newSelectedDate;
                                // definiri1hora
                                setState(() {
                                  _model.iData = dateTimeFromSecondsSinceEpoch(
                                      _model.calendarSelectedDay!.start
                                              .secondsSinceEpoch +
                                          28800);
                                });
                                // resetarlistahoras
                                setState(() {
                                  _model.listahoras = [];
                                  _model.contador = 1;
                                });
                                setState(() {
                                  _model.addToListahoras(_model.iData!);
                                });
                                while (_model.contador! <= 63) {
                                  setState(() {
                                    _model.iData =
                                        dateTimeFromSecondsSinceEpoch(
                                            _model.iData!.secondsSinceEpoch +
                                                900);
                                    _model.contador = _model.contador! + 1;
                                  });
                                  setState(() {
                                    _model.addToListahoras(_model.iData!);
                                  });
                                }
                                setState(() {});
                              },
                              titleStyle:
                                  FlutterFlowTheme.of(context).headlineSmall,
                              dayOfWeekStyle:
                                  FlutterFlowTheme.of(context).labelLarge,
                              dateStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              selectedDateStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                              inactiveDateStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 100.0,
                    decoration: BoxDecoration(),
                    child: StreamBuilder<List<AgendamentosRecord>>(
                      stream: queryAgendamentosRecord(
                        parent: widget.agendaEmpresa,
                        queryBuilder: (agendamentosRecord) =>
                            agendamentosRecord.where(
                          'profissional',
                          isEqualTo: _model.funcionarioselec,
                        ),
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
                        List<AgendamentosRecord>
                            containerAgendamentosRecordList = snapshot.data!;
                        return Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 100.0,
                          decoration: BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              final listahorasdisp = _model.listahoras
                                  .where((e) =>
                                      (e.secondsSinceEpoch >=
                                          (_model.calendarSelectedDay!.start
                                                  .secondsSinceEpoch +
                                              agendamentoEmpresasRecord
                                                  .segundosabertura)) &&
                                      (e.secondsSinceEpoch <=
                                          (_model.calendarSelectedDay!.start
                                                  .secondsSinceEpoch +
                                              agendamentoEmpresasRecord
                                                  .segundosfecha)) &&
                                      (e >= getCurrentTimestamp))
                                  .toList();
                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.horizontal,
                                itemCount: listahorasdisp.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 10.0),
                                itemBuilder: (context, listahorasdispIndex) {
                                  final listahorasdispItem =
                                      listahorasdisp[listahorasdispIndex];
                                  return Visibility(
                                    visible: containerAgendamentosRecordList
                                                .where((e) =>
                                                    (e.datainicio! <=
                                                        listahorasdispItem) &&
                                                    (e.datafim! >=
                                                        listahorasdispItem) &&
                                                    (e.profissional ==
                                                        _model
                                                            .funcionarioselec))
                                                .toList()
                                                .length >=
                                            1
                                        ? false
                                        : true,
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            _model.dataselec =
                                                listahorasdispItem;
                                          });
                                        },
                                        child: Container(
                                          width: 100.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: listahorasdispItem ==
                                                    _model.dataselec
                                                ? FlutterFlowTheme.of(context)
                                                    .secondary
                                                : FlutterFlowTheme.of(context)
                                                    .info,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Text(
                                              dateTimeFormat(
                                                'Hm',
                                                listahorasdispItem,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.00, 1.00),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StreamBuilder<ServicoPacotesRecord>(
                          stream:
                              ServicoPacotesRecord.getDocument(widget.servico!),
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
                            final buttonServicoPacotesRecord = snapshot.data!;
                            return FFButtonWidget(
                              onPressed: (_model.funcionarioselec == null) ||
                                      (_model.dataselec == null)
                                  ? null
                                  : () async {
                                      await AgendamentosRecord.createDoc(
                                              agendamentoEmpresasRecord
                                                  .reference)
                                          .set(createAgendamentosRecordData(
                                        codAgendamento:
                                            random_data.randomInteger(4, 4),
                                        clienteNome: currentUserDisplayName,
                                        codUserCliente: currentUserReference,
                                        codigoAgendamentoString:
                                            '${dateTimeFormat(
                                          'd/M h:mm a',
                                          getCurrentTimestamp,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )}${random_data.randomInteger(4, 4).toString()}',
                                        valorTotal: buttonServicoPacotesRecord
                                            .valorServico,
                                        processo: 'Aberto',
                                        dataFiltroDDMMAAAA: dateTimeFormat(
                                          'd/M/y',
                                          _model.dataselec,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        datainicio: _model.dataselec,
                                        datafim: dateTimeFromSecondsSinceEpoch(
                                            _model.dataselec!
                                                    .secondsSinceEpoch +
                                                buttonServicoPacotesRecord
                                                        .minutosGastos *
                                                    60),
                                        profissional: _model.funcionarioselec,
                                        servico: widget.servico,
                                      ));
                                      context.pop();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Serviço agendado com sucesso!',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                        ),
                                      );
                                    },
                              text: 'Agendar',
                              options: FFButtonOptions(
                                width: 150.0,
                                height: 60.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).info,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
