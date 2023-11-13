import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItensRecord extends FirestoreRecord {
  ItensRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "modificard_at" field.
  DateTime? _modificardAt;
  DateTime? get modificardAt => _modificardAt;
  bool hasModificardAt() => _modificardAt != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_preco" field.
  bool? _salePreco;
  bool get salePreco => _salePreco ?? false;
  bool hasSalePreco() => _salePreco != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _modificardAt = snapshotData['modificard_at'] as DateTime?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePreco = snapshotData['sale_preco'] as bool?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Itens');

  static Stream<ItensRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItensRecord.fromSnapshot(s));

  static Future<ItensRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItensRecord.fromSnapshot(s));

  static ItensRecord fromSnapshot(DocumentSnapshot snapshot) => ItensRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItensRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItensRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItensRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItensRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItensRecordData({
  String? nome,
  String? descricao,
  double? preco,
  DateTime? modificardAt,
  DateTime? createdAt,
  bool? onSale,
  bool? salePreco,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'descricao': descricao,
      'preco': preco,
      'modificard_at': modificardAt,
      'created_at': createdAt,
      'on_sale': onSale,
      'sale_preco': salePreco,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItensRecordDocumentEquality implements Equality<ItensRecord> {
  const ItensRecordDocumentEquality();

  @override
  bool equals(ItensRecord? e1, ItensRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.descricao == e2?.descricao &&
        e1?.preco == e2?.preco &&
        e1?.modificardAt == e2?.modificardAt &&
        e1?.createdAt == e2?.createdAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePreco == e2?.salePreco &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ItensRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.descricao,
        e?.preco,
        e?.modificardAt,
        e?.createdAt,
        e?.onSale,
        e?.salePreco,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is ItensRecord;
}
