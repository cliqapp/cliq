import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendamentosRecord extends FirestoreRecord {
  AgendamentosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "codAgendamento" field.
  int? _codAgendamento;
  int get codAgendamento => _codAgendamento ?? 0;
  bool hasCodAgendamento() => _codAgendamento != null;

  // "clienteNome" field.
  String? _clienteNome;
  String get clienteNome => _clienteNome ?? '';
  bool hasClienteNome() => _clienteNome != null;

  // "codUserCliente" field.
  DocumentReference? _codUserCliente;
  DocumentReference? get codUserCliente => _codUserCliente;
  bool hasCodUserCliente() => _codUserCliente != null;

  // "nomeProfissional" field.
  String? _nomeProfissional;
  String get nomeProfissional => _nomeProfissional ?? '';
  bool hasNomeProfissional() => _nomeProfissional != null;

  // "codigoAgendamentoString" field.
  String? _codigoAgendamentoString;
  String get codigoAgendamentoString => _codigoAgendamentoString ?? '';
  bool hasCodigoAgendamentoString() => _codigoAgendamentoString != null;

  // "valorTotal" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  bool hasValorTotal() => _valorTotal != null;

  // "processo" field.
  String? _processo;
  String get processo => _processo ?? '';
  bool hasProcesso() => _processo != null;

  // "dataFiltroDDMMAAAA" field.
  String? _dataFiltroDDMMAAAA;
  String get dataFiltroDDMMAAAA => _dataFiltroDDMMAAAA ?? '';
  bool hasDataFiltroDDMMAAAA() => _dataFiltroDDMMAAAA != null;

  // "datainicio" field.
  DateTime? _datainicio;
  DateTime? get datainicio => _datainicio;
  bool hasDatainicio() => _datainicio != null;

  // "datafim" field.
  DateTime? _datafim;
  DateTime? get datafim => _datafim;
  bool hasDatafim() => _datafim != null;

  // "profissional" field.
  DocumentReference? _profissional;
  DocumentReference? get profissional => _profissional;
  bool hasProfissional() => _profissional != null;

  // "servico" field.
  DocumentReference? _servico;
  DocumentReference? get servico => _servico;
  bool hasServico() => _servico != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _codAgendamento = castToType<int>(snapshotData['codAgendamento']);
    _clienteNome = snapshotData['clienteNome'] as String?;
    _codUserCliente = snapshotData['codUserCliente'] as DocumentReference?;
    _nomeProfissional = snapshotData['nomeProfissional'] as String?;
    _codigoAgendamentoString =
        snapshotData['codigoAgendamentoString'] as String?;
    _valorTotal = castToType<double>(snapshotData['valorTotal']);
    _processo = snapshotData['processo'] as String?;
    _dataFiltroDDMMAAAA = snapshotData['dataFiltroDDMMAAAA'] as String?;
    _datainicio = snapshotData['datainicio'] as DateTime?;
    _datafim = snapshotData['datafim'] as DateTime?;
    _profissional = snapshotData['profissional'] as DocumentReference?;
    _servico = snapshotData['servico'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('agendamentos')
          : FirebaseFirestore.instance.collectionGroup('agendamentos');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('agendamentos').doc();

  static Stream<AgendamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgendamentosRecord.fromSnapshot(s));

  static Future<AgendamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgendamentosRecord.fromSnapshot(s));

  static AgendamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgendamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendamentosRecordData({
  int? codAgendamento,
  String? clienteNome,
  DocumentReference? codUserCliente,
  String? nomeProfissional,
  String? codigoAgendamentoString,
  double? valorTotal,
  String? processo,
  String? dataFiltroDDMMAAAA,
  DateTime? datainicio,
  DateTime? datafim,
  DocumentReference? profissional,
  DocumentReference? servico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'codAgendamento': codAgendamento,
      'clienteNome': clienteNome,
      'codUserCliente': codUserCliente,
      'nomeProfissional': nomeProfissional,
      'codigoAgendamentoString': codigoAgendamentoString,
      'valorTotal': valorTotal,
      'processo': processo,
      'dataFiltroDDMMAAAA': dataFiltroDDMMAAAA,
      'datainicio': datainicio,
      'datafim': datafim,
      'profissional': profissional,
      'servico': servico,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendamentosRecordDocumentEquality
    implements Equality<AgendamentosRecord> {
  const AgendamentosRecordDocumentEquality();

  @override
  bool equals(AgendamentosRecord? e1, AgendamentosRecord? e2) {
    return e1?.codAgendamento == e2?.codAgendamento &&
        e1?.clienteNome == e2?.clienteNome &&
        e1?.codUserCliente == e2?.codUserCliente &&
        e1?.nomeProfissional == e2?.nomeProfissional &&
        e1?.codigoAgendamentoString == e2?.codigoAgendamentoString &&
        e1?.valorTotal == e2?.valorTotal &&
        e1?.processo == e2?.processo &&
        e1?.dataFiltroDDMMAAAA == e2?.dataFiltroDDMMAAAA &&
        e1?.datainicio == e2?.datainicio &&
        e1?.datafim == e2?.datafim &&
        e1?.profissional == e2?.profissional &&
        e1?.servico == e2?.servico;
  }

  @override
  int hash(AgendamentosRecord? e) => const ListEquality().hash([
        e?.codAgendamento,
        e?.clienteNome,
        e?.codUserCliente,
        e?.nomeProfissional,
        e?.codigoAgendamentoString,
        e?.valorTotal,
        e?.processo,
        e?.dataFiltroDDMMAAAA,
        e?.datainicio,
        e?.datafim,
        e?.profissional,
        e?.servico
      ]);

  @override
  bool isValidKey(Object? o) => o is AgendamentosRecord;
}
