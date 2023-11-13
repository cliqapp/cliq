import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComentariosRecord extends FirestoreRecord {
  ComentariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "mensagem" field.
  String? _mensagem;
  String get mensagem => _mensagem ?? '';
  bool hasMensagem() => _mensagem != null;

  // "criador" field.
  DocumentReference? _criador;
  DocumentReference? get criador => _criador;
  bool hasCriador() => _criador != null;

  // "criadohora" field.
  DateTime? _criadohora;
  DateTime? get criadohora => _criadohora;
  bool hasCriadohora() => _criadohora != null;

  // "notaempresa" field.
  DocumentReference? _notaempresa;
  DocumentReference? get notaempresa => _notaempresa;
  bool hasNotaempresa() => _notaempresa != null;

  void _initializeFields() {
    _mensagem = snapshotData['mensagem'] as String?;
    _criador = snapshotData['criador'] as DocumentReference?;
    _criadohora = snapshotData['criadohora'] as DateTime?;
    _notaempresa = snapshotData['notaempresa'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comentarios');

  static Stream<ComentariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComentariosRecord.fromSnapshot(s));

  static Future<ComentariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComentariosRecord.fromSnapshot(s));

  static ComentariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComentariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComentariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComentariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComentariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComentariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComentariosRecordData({
  String? mensagem,
  DocumentReference? criador,
  DateTime? criadohora,
  DocumentReference? notaempresa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mensagem': mensagem,
      'criador': criador,
      'criadohora': criadohora,
      'notaempresa': notaempresa,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComentariosRecordDocumentEquality implements Equality<ComentariosRecord> {
  const ComentariosRecordDocumentEquality();

  @override
  bool equals(ComentariosRecord? e1, ComentariosRecord? e2) {
    return e1?.mensagem == e2?.mensagem &&
        e1?.criador == e2?.criador &&
        e1?.criadohora == e2?.criadohora &&
        e1?.notaempresa == e2?.notaempresa;
  }

  @override
  int hash(ComentariosRecord? e) => const ListEquality()
      .hash([e?.mensagem, e?.criador, e?.criadohora, e?.notaempresa]);

  @override
  bool isValidKey(Object? o) => o is ComentariosRecord;
}
