import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriasRecord extends FirestoreRecord {
  CategoriasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeCat" field.
  String? _nomeCat;
  String get nomeCat => _nomeCat ?? '';
  bool hasNomeCat() => _nomeCat != null;

  // "fotoLogo" field.
  String? _fotoLogo;
  String get fotoLogo => _fotoLogo ?? '';
  bool hasFotoLogo() => _fotoLogo != null;

  void _initializeFields() {
    _nomeCat = snapshotData['nomeCat'] as String?;
    _fotoLogo = snapshotData['fotoLogo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categorias');

  static Stream<CategoriasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriasRecord.fromSnapshot(s));

  static Future<CategoriasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriasRecord.fromSnapshot(s));

  static CategoriasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriasRecordData({
  String? nomeCat,
  String? fotoLogo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeCat': nomeCat,
      'fotoLogo': fotoLogo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriasRecordDocumentEquality implements Equality<CategoriasRecord> {
  const CategoriasRecordDocumentEquality();

  @override
  bool equals(CategoriasRecord? e1, CategoriasRecord? e2) {
    return e1?.nomeCat == e2?.nomeCat && e1?.fotoLogo == e2?.fotoLogo;
  }

  @override
  int hash(CategoriasRecord? e) =>
      const ListEquality().hash([e?.nomeCat, e?.fotoLogo]);

  @override
  bool isValidKey(Object? o) => o is CategoriasRecord;
}
