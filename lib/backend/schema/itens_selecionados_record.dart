import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItensSelecionadosRecord extends FirestoreRecord {
  ItensSelecionadosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "item" field.
  DocumentReference? _item;
  DocumentReference? get item => _item;
  bool hasItem() => _item != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "cart" field.
  DocumentReference? _cart;
  DocumentReference? get cart => _cart;
  bool hasCart() => _cart != null;

  void _initializeFields() {
    _item = snapshotData['item'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _image = snapshotData['image'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _cart = snapshotData['cart'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itens_selecionados');

  static Stream<ItensSelecionadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItensSelecionadosRecord.fromSnapshot(s));

  static Future<ItensSelecionadosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ItensSelecionadosRecord.fromSnapshot(s));

  static ItensSelecionadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItensSelecionadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItensSelecionadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItensSelecionadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItensSelecionadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItensSelecionadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItensSelecionadosRecordData({
  DocumentReference? item,
  String? name,
  String? descricao,
  String? image,
  double? preco,
  double? subtotal,
  DocumentReference? cart,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item': item,
      'name': name,
      'descricao': descricao,
      'image': image,
      'preco': preco,
      'subtotal': subtotal,
      'cart': cart,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItensSelecionadosRecordDocumentEquality
    implements Equality<ItensSelecionadosRecord> {
  const ItensSelecionadosRecordDocumentEquality();

  @override
  bool equals(ItensSelecionadosRecord? e1, ItensSelecionadosRecord? e2) {
    return e1?.item == e2?.item &&
        e1?.name == e2?.name &&
        e1?.descricao == e2?.descricao &&
        e1?.image == e2?.image &&
        e1?.preco == e2?.preco &&
        e1?.subtotal == e2?.subtotal &&
        e1?.cart == e2?.cart;
  }

  @override
  int hash(ItensSelecionadosRecord? e) => const ListEquality().hash([
        e?.item,
        e?.name,
        e?.descricao,
        e?.image,
        e?.preco,
        e?.subtotal,
        e?.cart
      ]);

  @override
  bool isValidKey(Object? o) => o is ItensSelecionadosRecord;
}
