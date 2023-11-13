import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FinanceiroRecord extends FirestoreRecord {
  FinanceiroRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nomelancamento" field.
  String? _nomelancamento;
  String get nomelancamento => _nomelancamento ?? '';
  bool hasNomelancamento() => _nomelancamento != null;

  // "valorLanc" field.
  double? _valorLanc;
  double get valorLanc => _valorLanc ?? 0.0;
  bool hasValorLanc() => _valorLanc != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomelancamento = snapshotData['Nomelancamento'] as String?;
    _valorLanc = castToType<double>(snapshotData['valorLanc']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('financeiro')
          : FirebaseFirestore.instance.collectionGroup('financeiro');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('financeiro').doc();

  static Stream<FinanceiroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FinanceiroRecord.fromSnapshot(s));

  static Future<FinanceiroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FinanceiroRecord.fromSnapshot(s));

  static FinanceiroRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FinanceiroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FinanceiroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FinanceiroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FinanceiroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FinanceiroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFinanceiroRecordData({
  String? nomelancamento,
  double? valorLanc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nomelancamento': nomelancamento,
      'valorLanc': valorLanc,
    }.withoutNulls,
  );

  return firestoreData;
}

class FinanceiroRecordDocumentEquality implements Equality<FinanceiroRecord> {
  const FinanceiroRecordDocumentEquality();

  @override
  bool equals(FinanceiroRecord? e1, FinanceiroRecord? e2) {
    return e1?.nomelancamento == e2?.nomelancamento &&
        e1?.valorLanc == e2?.valorLanc;
  }

  @override
  int hash(FinanceiroRecord? e) =>
      const ListEquality().hash([e?.nomelancamento, e?.valorLanc]);

  @override
  bool isValidKey(Object? o) => o is FinanceiroRecord;
}
