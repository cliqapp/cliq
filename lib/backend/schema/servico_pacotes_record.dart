import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicoPacotesRecord extends FirestoreRecord {
  ServicoPacotesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "minutosGastos" field.
  int? _minutosGastos;
  int get minutosGastos => _minutosGastos ?? 0;
  bool hasMinutosGastos() => _minutosGastos != null;

  // "valorServico" field.
  double? _valorServico;
  double get valorServico => _valorServico ?? 0.0;
  bool hasValorServico() => _valorServico != null;

  // "nomeServico" field.
  String? _nomeServico;
  String get nomeServico => _nomeServico ?? '';
  bool hasNomeServico() => _nomeServico != null;

  // "fotoServico" field.
  String? _fotoServico;
  String get fotoServico => _fotoServico ?? '';
  bool hasFotoServico() => _fotoServico != null;

  // "descricaoservico" field.
  String? _descricaoservico;
  String get descricaoservico => _descricaoservico ?? '';
  bool hasDescricaoservico() => _descricaoservico != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _minutosGastos = castToType<int>(snapshotData['minutosGastos']);
    _valorServico = castToType<double>(snapshotData['valorServico']);
    _nomeServico = snapshotData['nomeServico'] as String?;
    _fotoServico = snapshotData['fotoServico'] as String?;
    _descricaoservico = snapshotData['descricaoservico'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('servicoPacotes')
          : FirebaseFirestore.instance.collectionGroup('servicoPacotes');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('servicoPacotes').doc();

  static Stream<ServicoPacotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicoPacotesRecord.fromSnapshot(s));

  static Future<ServicoPacotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicoPacotesRecord.fromSnapshot(s));

  static ServicoPacotesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicoPacotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicoPacotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicoPacotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicoPacotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicoPacotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicoPacotesRecordData({
  int? minutosGastos,
  double? valorServico,
  String? nomeServico,
  String? fotoServico,
  String? descricaoservico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'minutosGastos': minutosGastos,
      'valorServico': valorServico,
      'nomeServico': nomeServico,
      'fotoServico': fotoServico,
      'descricaoservico': descricaoservico,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicoPacotesRecordDocumentEquality
    implements Equality<ServicoPacotesRecord> {
  const ServicoPacotesRecordDocumentEquality();

  @override
  bool equals(ServicoPacotesRecord? e1, ServicoPacotesRecord? e2) {
    return e1?.minutosGastos == e2?.minutosGastos &&
        e1?.valorServico == e2?.valorServico &&
        e1?.nomeServico == e2?.nomeServico &&
        e1?.fotoServico == e2?.fotoServico &&
        e1?.descricaoservico == e2?.descricaoservico;
  }

  @override
  int hash(ServicoPacotesRecord? e) => const ListEquality().hash([
        e?.minutosGastos,
        e?.valorServico,
        e?.nomeServico,
        e?.fotoServico,
        e?.descricaoservico
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicoPacotesRecord;
}
