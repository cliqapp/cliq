import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresasRecord extends FirestoreRecord {
  EmpresasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NomeEmpresa" field.
  String? _nomeEmpresa;
  String get nomeEmpresa => _nomeEmpresa ?? '';
  bool hasNomeEmpresa() => _nomeEmpresa != null;

  // "HorarioInicio" field.
  DateTime? _horarioInicio;
  DateTime? get horarioInicio => _horarioInicio;
  bool hasHorarioInicio() => _horarioInicio != null;

  // "HorarioFim" field.
  DateTime? _horarioFim;
  DateTime? get horarioFim => _horarioFim;
  bool hasHorarioFim() => _horarioFim != null;

  // "Localizacao" field.
  LatLng? _localizacao;
  LatLng? get localizacao => _localizacao;
  bool hasLocalizacao() => _localizacao != null;

  // "Logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "Responsavel" field.
  DocumentReference? _responsavel;
  DocumentReference? get responsavel => _responsavel;
  bool hasResponsavel() => _responsavel != null;

  // "IntervaloAtividades" field.
  int? _intervaloAtividades;
  int get intervaloAtividades => _intervaloAtividades ?? 0;
  bool hasIntervaloAtividades() => _intervaloAtividades != null;

  // "datasRemovidas" field.
  List<DateTime>? _datasRemovidas;
  List<DateTime> get datasRemovidas => _datasRemovidas ?? const [];
  bool hasDatasRemovidas() => _datasRemovidas != null;

  // "intervalos" field.
  List<DateTime>? _intervalos;
  List<DateTime> get intervalos => _intervalos ?? const [];
  bool hasIntervalos() => _intervalos != null;

  // "atraso1" field.
  int? _atraso1;
  int get atraso1 => _atraso1 ?? 0;
  bool hasAtraso1() => _atraso1 != null;

  // "atraso2" field.
  int? _atraso2;
  int get atraso2 => _atraso2 ?? 0;
  bool hasAtraso2() => _atraso2 != null;

  // "InicioPeriodo2" field.
  DateTime? _inicioPeriodo2;
  DateTime? get inicioPeriodo2 => _inicioPeriodo2;
  bool hasInicioPeriodo2() => _inicioPeriodo2 != null;

  // "FimPeriodo2" field.
  DateTime? _fimPeriodo2;
  DateTime? get fimPeriodo2 => _fimPeriodo2;
  bool hasFimPeriodo2() => _fimPeriodo2 != null;

  // "InicioPeriodo3" field.
  DateTime? _inicioPeriodo3;
  DateTime? get inicioPeriodo3 => _inicioPeriodo3;
  bool hasInicioPeriodo3() => _inicioPeriodo3 != null;

  // "FimPeriodo3" field.
  DateTime? _fimPeriodo3;
  DateTime? get fimPeriodo3 => _fimPeriodo3;
  bool hasFimPeriodo3() => _fimPeriodo3 != null;

  // "funcao" field.
  String? _funcao;
  String get funcao => _funcao ?? '';
  bool hasFuncao() => _funcao != null;

  // "mediaRating" field.
  int? _mediaRating;
  int get mediaRating => _mediaRating ?? 0;
  bool hasMediaRating() => _mediaRating != null;

  // "apartirde" field.
  double? _apartirde;
  double get apartirde => _apartirde ?? 0.0;
  bool hasApartirde() => _apartirde != null;

  // "nomeResponsavel" field.
  String? _nomeResponsavel;
  String get nomeResponsavel => _nomeResponsavel ?? '';
  bool hasNomeResponsavel() => _nomeResponsavel != null;

  // "dataCriada" field.
  DateTime? _dataCriada;
  DateTime? get dataCriada => _dataCriada;
  bool hasDataCriada() => _dataCriada != null;

  // "taxaFixa" field.
  double? _taxaFixa;
  double get taxaFixa => _taxaFixa ?? 0.0;
  bool hasTaxaFixa() => _taxaFixa != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "codCategoria" field.
  DocumentReference? _codCategoria;
  DocumentReference? get codCategoria => _codCategoria;
  bool hasCodCategoria() => _codCategoria != null;

  // "rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  bool hasRua() => _rua != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "segundosabertura" field.
  int? _segundosabertura;
  int get segundosabertura => _segundosabertura ?? 0;
  bool hasSegundosabertura() => _segundosabertura != null;

  // "segundosfecha" field.
  int? _segundosfecha;
  int get segundosfecha => _segundosfecha ?? 0;
  bool hasSegundosfecha() => _segundosfecha != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "fotos" field.
  List<String>? _fotos;
  List<String> get fotos => _fotos ?? const [];
  bool hasFotos() => _fotos != null;

  // "media" field.
  double? _media;
  double get media => _media ?? 0.0;
  bool hasMedia() => _media != null;

  // "comentarios" field.
  List<DocumentReference>? _comentarios;
  List<DocumentReference> get comentarios => _comentarios ?? const [];
  bool hasComentarios() => _comentarios != null;

  void _initializeFields() {
    _nomeEmpresa = snapshotData['NomeEmpresa'] as String?;
    _horarioInicio = snapshotData['HorarioInicio'] as DateTime?;
    _horarioFim = snapshotData['HorarioFim'] as DateTime?;
    _localizacao = snapshotData['Localizacao'] as LatLng?;
    _logo = snapshotData['Logo'] as String?;
    _responsavel = snapshotData['Responsavel'] as DocumentReference?;
    _intervaloAtividades = castToType<int>(snapshotData['IntervaloAtividades']);
    _datasRemovidas = getDataList(snapshotData['datasRemovidas']);
    _intervalos = getDataList(snapshotData['intervalos']);
    _atraso1 = castToType<int>(snapshotData['atraso1']);
    _atraso2 = castToType<int>(snapshotData['atraso2']);
    _inicioPeriodo2 = snapshotData['InicioPeriodo2'] as DateTime?;
    _fimPeriodo2 = snapshotData['FimPeriodo2'] as DateTime?;
    _inicioPeriodo3 = snapshotData['InicioPeriodo3'] as DateTime?;
    _fimPeriodo3 = snapshotData['FimPeriodo3'] as DateTime?;
    _funcao = snapshotData['funcao'] as String?;
    _mediaRating = castToType<int>(snapshotData['mediaRating']);
    _apartirde = castToType<double>(snapshotData['apartirde']);
    _nomeResponsavel = snapshotData['nomeResponsavel'] as String?;
    _dataCriada = snapshotData['dataCriada'] as DateTime?;
    _taxaFixa = castToType<double>(snapshotData['taxaFixa']);
    _cidade = snapshotData['cidade'] as String?;
    _estado = snapshotData['estado'] as String?;
    _codCategoria = snapshotData['codCategoria'] as DocumentReference?;
    _rua = snapshotData['rua'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _segundosabertura = castToType<int>(snapshotData['segundosabertura']);
    _segundosfecha = castToType<int>(snapshotData['segundosfecha']);
    _numero = snapshotData['numero'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _fotos = getDataList(snapshotData['fotos']);
    _media = castToType<double>(snapshotData['media']);
    _comentarios = getDataList(snapshotData['comentarios']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empresas');

  static Stream<EmpresasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpresasRecord.fromSnapshot(s));

  static Future<EmpresasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpresasRecord.fromSnapshot(s));

  static EmpresasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpresasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpresasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpresasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpresasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpresasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpresasRecordData({
  String? nomeEmpresa,
  DateTime? horarioInicio,
  DateTime? horarioFim,
  LatLng? localizacao,
  String? logo,
  DocumentReference? responsavel,
  int? intervaloAtividades,
  int? atraso1,
  int? atraso2,
  DateTime? inicioPeriodo2,
  DateTime? fimPeriodo2,
  DateTime? inicioPeriodo3,
  DateTime? fimPeriodo3,
  String? funcao,
  int? mediaRating,
  double? apartirde,
  String? nomeResponsavel,
  DateTime? dataCriada,
  double? taxaFixa,
  String? cidade,
  String? estado,
  DocumentReference? codCategoria,
  String? rua,
  String? bairro,
  int? segundosabertura,
  int? segundosfecha,
  String? numero,
  String? descricao,
  double? media,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NomeEmpresa': nomeEmpresa,
      'HorarioInicio': horarioInicio,
      'HorarioFim': horarioFim,
      'Localizacao': localizacao,
      'Logo': logo,
      'Responsavel': responsavel,
      'IntervaloAtividades': intervaloAtividades,
      'atraso1': atraso1,
      'atraso2': atraso2,
      'InicioPeriodo2': inicioPeriodo2,
      'FimPeriodo2': fimPeriodo2,
      'InicioPeriodo3': inicioPeriodo3,
      'FimPeriodo3': fimPeriodo3,
      'funcao': funcao,
      'mediaRating': mediaRating,
      'apartirde': apartirde,
      'nomeResponsavel': nomeResponsavel,
      'dataCriada': dataCriada,
      'taxaFixa': taxaFixa,
      'cidade': cidade,
      'estado': estado,
      'codCategoria': codCategoria,
      'rua': rua,
      'bairro': bairro,
      'segundosabertura': segundosabertura,
      'segundosfecha': segundosfecha,
      'numero': numero,
      'descricao': descricao,
      'media': media,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpresasRecordDocumentEquality implements Equality<EmpresasRecord> {
  const EmpresasRecordDocumentEquality();

  @override
  bool equals(EmpresasRecord? e1, EmpresasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomeEmpresa == e2?.nomeEmpresa &&
        e1?.horarioInicio == e2?.horarioInicio &&
        e1?.horarioFim == e2?.horarioFim &&
        e1?.localizacao == e2?.localizacao &&
        e1?.logo == e2?.logo &&
        e1?.responsavel == e2?.responsavel &&
        e1?.intervaloAtividades == e2?.intervaloAtividades &&
        listEquality.equals(e1?.datasRemovidas, e2?.datasRemovidas) &&
        listEquality.equals(e1?.intervalos, e2?.intervalos) &&
        e1?.atraso1 == e2?.atraso1 &&
        e1?.atraso2 == e2?.atraso2 &&
        e1?.inicioPeriodo2 == e2?.inicioPeriodo2 &&
        e1?.fimPeriodo2 == e2?.fimPeriodo2 &&
        e1?.inicioPeriodo3 == e2?.inicioPeriodo3 &&
        e1?.fimPeriodo3 == e2?.fimPeriodo3 &&
        e1?.funcao == e2?.funcao &&
        e1?.mediaRating == e2?.mediaRating &&
        e1?.apartirde == e2?.apartirde &&
        e1?.nomeResponsavel == e2?.nomeResponsavel &&
        e1?.dataCriada == e2?.dataCriada &&
        e1?.taxaFixa == e2?.taxaFixa &&
        e1?.cidade == e2?.cidade &&
        e1?.estado == e2?.estado &&
        e1?.codCategoria == e2?.codCategoria &&
        e1?.rua == e2?.rua &&
        e1?.bairro == e2?.bairro &&
        e1?.segundosabertura == e2?.segundosabertura &&
        e1?.segundosfecha == e2?.segundosfecha &&
        e1?.numero == e2?.numero &&
        e1?.descricao == e2?.descricao &&
        listEquality.equals(e1?.fotos, e2?.fotos) &&
        e1?.media == e2?.media &&
        listEquality.equals(e1?.comentarios, e2?.comentarios);
  }

  @override
  int hash(EmpresasRecord? e) => const ListEquality().hash([
        e?.nomeEmpresa,
        e?.horarioInicio,
        e?.horarioFim,
        e?.localizacao,
        e?.logo,
        e?.responsavel,
        e?.intervaloAtividades,
        e?.datasRemovidas,
        e?.intervalos,
        e?.atraso1,
        e?.atraso2,
        e?.inicioPeriodo2,
        e?.fimPeriodo2,
        e?.inicioPeriodo3,
        e?.fimPeriodo3,
        e?.funcao,
        e?.mediaRating,
        e?.apartirde,
        e?.nomeResponsavel,
        e?.dataCriada,
        e?.taxaFixa,
        e?.cidade,
        e?.estado,
        e?.codCategoria,
        e?.rua,
        e?.bairro,
        e?.segundosabertura,
        e?.segundosfecha,
        e?.numero,
        e?.descricao,
        e?.fotos,
        e?.media,
        e?.comentarios
      ]);

  @override
  bool isValidKey(Object? o) => o is EmpresasRecord;
}
