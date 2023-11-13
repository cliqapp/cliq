import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConversasRecord extends FirestoreRecord {
  ConversasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idconversa" field.
  String? _idconversa;
  String get idconversa => _idconversa ?? '';
  bool hasIdconversa() => _idconversa != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  // "cliente" field.
  DocumentReference? _cliente;
  DocumentReference? get cliente => _cliente;
  bool hasCliente() => _cliente != null;

  // "lidacliente" field.
  bool? _lidacliente;
  bool get lidacliente => _lidacliente ?? false;
  bool hasLidacliente() => _lidacliente != null;

  // "lidaempresa" field.
  bool? _lidaempresa;
  bool get lidaempresa => _lidaempresa ?? false;
  bool hasLidaempresa() => _lidaempresa != null;

  void _initializeFields() {
    _idconversa = snapshotData['idconversa'] as String?;
    _empresa = snapshotData['empresa'] as DocumentReference?;
    _cliente = snapshotData['cliente'] as DocumentReference?;
    _lidacliente = snapshotData['lidacliente'] as bool?;
    _lidaempresa = snapshotData['lidaempresa'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conversas');

  static Stream<ConversasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConversasRecord.fromSnapshot(s));

  static Future<ConversasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConversasRecord.fromSnapshot(s));

  static ConversasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConversasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConversasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConversasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConversasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConversasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConversasRecordData({
  String? idconversa,
  DocumentReference? empresa,
  DocumentReference? cliente,
  bool? lidacliente,
  bool? lidaempresa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idconversa': idconversa,
      'empresa': empresa,
      'cliente': cliente,
      'lidacliente': lidacliente,
      'lidaempresa': lidaempresa,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConversasRecordDocumentEquality implements Equality<ConversasRecord> {
  const ConversasRecordDocumentEquality();

  @override
  bool equals(ConversasRecord? e1, ConversasRecord? e2) {
    return e1?.idconversa == e2?.idconversa &&
        e1?.empresa == e2?.empresa &&
        e1?.cliente == e2?.cliente &&
        e1?.lidacliente == e2?.lidacliente &&
        e1?.lidaempresa == e2?.lidaempresa;
  }

  @override
  int hash(ConversasRecord? e) => const ListEquality().hash(
      [e?.idconversa, e?.empresa, e?.cliente, e?.lidacliente, e?.lidaempresa]);

  @override
  bool isValidKey(Object? o) => o is ConversasRecord;
}
