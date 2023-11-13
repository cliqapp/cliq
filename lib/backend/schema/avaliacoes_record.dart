import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvaliacoesRecord extends FirestoreRecord {
  AvaliacoesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "nota" field.
  double? _nota;
  double get nota => _nota ?? 0.0;
  bool hasNota() => _nota != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _nota = castToType<double>(snapshotData['nota']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('avaliacoes')
          : FirebaseFirestore.instance.collectionGroup('avaliacoes');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('avaliacoes').doc();

  static Stream<AvaliacoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvaliacoesRecord.fromSnapshot(s));

  static Future<AvaliacoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AvaliacoesRecord.fromSnapshot(s));

  static AvaliacoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AvaliacoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvaliacoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvaliacoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvaliacoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvaliacoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvaliacoesRecordData({
  DocumentReference? usuario,
  double? nota,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'nota': nota,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvaliacoesRecordDocumentEquality implements Equality<AvaliacoesRecord> {
  const AvaliacoesRecordDocumentEquality();

  @override
  bool equals(AvaliacoesRecord? e1, AvaliacoesRecord? e2) {
    return e1?.usuario == e2?.usuario && e1?.nota == e2?.nota;
  }

  @override
  int hash(AvaliacoesRecord? e) =>
      const ListEquality().hash([e?.usuario, e?.nota]);

  @override
  bool isValidKey(Object? o) => o is AvaliacoesRecord;
}
