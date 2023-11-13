import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnderecosUserRecord extends FirestoreRecord {
  EnderecosUserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeEnd" field.
  String? _nomeEnd;
  String get nomeEnd => _nomeEnd ?? '';
  bool hasNomeEnd() => _nomeEnd != null;

  // "ruanumero" field.
  String? _ruanumero;
  String get ruanumero => _ruanumero ?? '';
  bool hasRuanumero() => _ruanumero != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "cidadeUF" field.
  String? _cidadeUF;
  String get cidadeUF => _cidadeUF ?? '';
  bool hasCidadeUF() => _cidadeUF != null;

  // "localizacao" field.
  LatLng? _localizacao;
  LatLng? get localizacao => _localizacao;
  bool hasLocalizacao() => _localizacao != null;

  // "datacriacao" field.
  DateTime? _datacriacao;
  DateTime? get datacriacao => _datacriacao;
  bool hasDatacriacao() => _datacriacao != null;

  // "selecionado" field.
  bool? _selecionado;
  bool get selecionado => _selecionado ?? false;
  bool hasSelecionado() => _selecionado != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomeEnd = snapshotData['nomeEnd'] as String?;
    _ruanumero = snapshotData['ruanumero'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cidadeUF = snapshotData['cidadeUF'] as String?;
    _localizacao = snapshotData['localizacao'] as LatLng?;
    _datacriacao = snapshotData['datacriacao'] as DateTime?;
    _selecionado = snapshotData['selecionado'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('enderecosUser')
          : FirebaseFirestore.instance.collectionGroup('enderecosUser');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('enderecosUser').doc();

  static Stream<EnderecosUserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnderecosUserRecord.fromSnapshot(s));

  static Future<EnderecosUserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnderecosUserRecord.fromSnapshot(s));

  static EnderecosUserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnderecosUserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnderecosUserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnderecosUserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnderecosUserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnderecosUserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnderecosUserRecordData({
  String? nomeEnd,
  String? ruanumero,
  String? bairro,
  String? cidadeUF,
  LatLng? localizacao,
  DateTime? datacriacao,
  bool? selecionado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeEnd': nomeEnd,
      'ruanumero': ruanumero,
      'bairro': bairro,
      'cidadeUF': cidadeUF,
      'localizacao': localizacao,
      'datacriacao': datacriacao,
      'selecionado': selecionado,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnderecosUserRecordDocumentEquality
    implements Equality<EnderecosUserRecord> {
  const EnderecosUserRecordDocumentEquality();

  @override
  bool equals(EnderecosUserRecord? e1, EnderecosUserRecord? e2) {
    return e1?.nomeEnd == e2?.nomeEnd &&
        e1?.ruanumero == e2?.ruanumero &&
        e1?.bairro == e2?.bairro &&
        e1?.cidadeUF == e2?.cidadeUF &&
        e1?.localizacao == e2?.localizacao &&
        e1?.datacriacao == e2?.datacriacao &&
        e1?.selecionado == e2?.selecionado;
  }

  @override
  int hash(EnderecosUserRecord? e) => const ListEquality().hash([
        e?.nomeEnd,
        e?.ruanumero,
        e?.bairro,
        e?.cidadeUF,
        e?.localizacao,
        e?.datacriacao,
        e?.selecionado
      ]);

  @override
  bool isValidKey(Object? o) => o is EnderecosUserRecord;
}
