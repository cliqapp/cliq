import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MensagemRecord extends FirestoreRecord {
  MensagemRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "textomensagem" field.
  String? _textomensagem;
  String get textomensagem => _textomensagem ?? '';
  bool hasTextomensagem() => _textomensagem != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "visualizadaempresa" field.
  bool? _visualizadaempresa;
  bool get visualizadaempresa => _visualizadaempresa ?? false;
  bool hasVisualizadaempresa() => _visualizadaempresa != null;

  // "visualizadacliente" field.
  bool? _visualizadacliente;
  bool get visualizadacliente => _visualizadacliente ?? false;
  bool hasVisualizadacliente() => _visualizadacliente != null;

  // "enviadapor" field.
  String? _enviadapor;
  String get enviadapor => _enviadapor ?? '';
  bool hasEnviadapor() => _enviadapor != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _textomensagem = snapshotData['textomensagem'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _visualizadaempresa = snapshotData['visualizadaempresa'] as bool?;
    _visualizadacliente = snapshotData['visualizadacliente'] as bool?;
    _enviadapor = snapshotData['enviadapor'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('mensagem')
          : FirebaseFirestore.instance.collectionGroup('mensagem');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('mensagem').doc();

  static Stream<MensagemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MensagemRecord.fromSnapshot(s));

  static Future<MensagemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MensagemRecord.fromSnapshot(s));

  static MensagemRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MensagemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MensagemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MensagemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MensagemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MensagemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMensagemRecordData({
  String? textomensagem,
  DateTime? data,
  bool? visualizadaempresa,
  bool? visualizadacliente,
  String? enviadapor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'textomensagem': textomensagem,
      'data': data,
      'visualizadaempresa': visualizadaempresa,
      'visualizadacliente': visualizadacliente,
      'enviadapor': enviadapor,
    }.withoutNulls,
  );

  return firestoreData;
}

class MensagemRecordDocumentEquality implements Equality<MensagemRecord> {
  const MensagemRecordDocumentEquality();

  @override
  bool equals(MensagemRecord? e1, MensagemRecord? e2) {
    return e1?.textomensagem == e2?.textomensagem &&
        e1?.data == e2?.data &&
        e1?.visualizadaempresa == e2?.visualizadaempresa &&
        e1?.visualizadacliente == e2?.visualizadacliente &&
        e1?.enviadapor == e2?.enviadapor;
  }

  @override
  int hash(MensagemRecord? e) => const ListEquality().hash([
        e?.textomensagem,
        e?.data,
        e?.visualizadaempresa,
        e?.visualizadacliente,
        e?.enviadapor
      ]);

  @override
  bool isValidKey(Object? o) => o is MensagemRecord;
}
