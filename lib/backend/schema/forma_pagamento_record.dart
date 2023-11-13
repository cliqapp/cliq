import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormaPagamentoRecord extends FirestoreRecord {
  FormaPagamentoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomePag" field.
  String? _nomePag;
  String get nomePag => _nomePag ?? '';
  bool hasNomePag() => _nomePag != null;

  // "tPag" field.
  String? _tPag;
  String get tPag => _tPag ?? '';
  bool hasTPag() => _tPag != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomePag = snapshotData['nomePag'] as String?;
    _tPag = snapshotData['tPag'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('formaPagamento')
          : FirebaseFirestore.instance.collectionGroup('formaPagamento');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('formaPagamento').doc();

  static Stream<FormaPagamentoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormaPagamentoRecord.fromSnapshot(s));

  static Future<FormaPagamentoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormaPagamentoRecord.fromSnapshot(s));

  static FormaPagamentoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormaPagamentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormaPagamentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormaPagamentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormaPagamentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormaPagamentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormaPagamentoRecordData({
  String? nomePag,
  String? tPag,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomePag': nomePag,
      'tPag': tPag,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormaPagamentoRecordDocumentEquality
    implements Equality<FormaPagamentoRecord> {
  const FormaPagamentoRecordDocumentEquality();

  @override
  bool equals(FormaPagamentoRecord? e1, FormaPagamentoRecord? e2) {
    return e1?.nomePag == e2?.nomePag && e1?.tPag == e2?.tPag;
  }

  @override
  int hash(FormaPagamentoRecord? e) =>
      const ListEquality().hash([e?.nomePag, e?.tPag]);

  @override
  bool isValidKey(Object? o) => o is FormaPagamentoRecord;
}
