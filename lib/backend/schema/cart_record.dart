import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "criador" field.
  DocumentReference? _criador;
  DocumentReference? get criador => _criador;
  bool hasCriador() => _criador != null;

  // "itemcount" field.
  int? _itemcount;
  int get itemcount => _itemcount ?? 0;
  bool hasItemcount() => _itemcount != null;

  // "isactive" field.
  bool? _isactive;
  bool get isactive => _isactive ?? false;
  bool hasIsactive() => _isactive != null;

  // "amout" field.
  double? _amout;
  double get amout => _amout ?? 0.0;
  bool hasAmout() => _amout != null;

  // "selecteItensList" field.
  DocumentReference? _selecteItensList;
  DocumentReference? get selecteItensList => _selecteItensList;
  bool hasSelecteItensList() => _selecteItensList != null;

  void _initializeFields() {
    _criador = snapshotData['criador'] as DocumentReference?;
    _itemcount = castToType<int>(snapshotData['itemcount']);
    _isactive = snapshotData['isactive'] as bool?;
    _amout = castToType<double>(snapshotData['amout']);
    _selecteItensList = snapshotData['selecteItensList'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  DocumentReference? criador,
  int? itemcount,
  bool? isactive,
  double? amout,
  DocumentReference? selecteItensList,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'criador': criador,
      'itemcount': itemcount,
      'isactive': isactive,
      'amout': amout,
      'selecteItensList': selecteItensList,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.criador == e2?.criador &&
        e1?.itemcount == e2?.itemcount &&
        e1?.isactive == e2?.isactive &&
        e1?.amout == e2?.amout &&
        e1?.selecteItensList == e2?.selecteItensList;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash(
      [e?.criador, e?.itemcount, e?.isactive, e?.amout, e?.selecteItensList]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
