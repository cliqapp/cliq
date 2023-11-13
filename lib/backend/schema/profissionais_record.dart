import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfissionaisRecord extends FirestoreRecord {
  ProfissionaisRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  // "especialidade" field.
  String? _especialidade;
  String get especialidade => _especialidade ?? '';
  bool hasEspecialidade() => _especialidade != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _foto = snapshotData['foto'] as String?;
    _ativo = snapshotData['ativo'] as bool?;
    _especialidade = snapshotData['especialidade'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('profissionais')
          : FirebaseFirestore.instance.collectionGroup('profissionais');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('profissionais').doc();

  static Stream<ProfissionaisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfissionaisRecord.fromSnapshot(s));

  static Future<ProfissionaisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfissionaisRecord.fromSnapshot(s));

  static ProfissionaisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfissionaisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfissionaisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfissionaisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfissionaisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfissionaisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfissionaisRecordData({
  String? nome,
  String? foto,
  bool? ativo,
  String? especialidade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'foto': foto,
      'ativo': ativo,
      'especialidade': especialidade,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfissionaisRecordDocumentEquality
    implements Equality<ProfissionaisRecord> {
  const ProfissionaisRecordDocumentEquality();

  @override
  bool equals(ProfissionaisRecord? e1, ProfissionaisRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.foto == e2?.foto &&
        e1?.ativo == e2?.ativo &&
        e1?.especialidade == e2?.especialidade;
  }

  @override
  int hash(ProfissionaisRecord? e) =>
      const ListEquality().hash([e?.nome, e?.foto, e?.ativo, e?.especialidade]);

  @override
  bool isValidKey(Object? o) => o is ProfissionaisRecord;
}
