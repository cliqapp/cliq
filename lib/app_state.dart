import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _label = prefs.getStringList('ff_label') ?? _label;
    });
    _safeInit(() {
      _values1 =
          prefs.getStringList('ff_values1')?.map(double.parse).toList() ??
              _values1;
    });
    _safeInit(() {
      _empresasFav = prefs
              .getStringList('ff_empresasFav')
              ?.map((path) => path.ref)
              .toList() ??
          _empresasFav;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _label = ['Abr', 'Mai', 'Jun', 'Jul'];
  List<String> get label => _label;
  set label(List<String> _value) {
    _label = _value;
    prefs.setStringList('ff_label', _value);
  }

  void addToLabel(String _value) {
    _label.add(_value);
    prefs.setStringList('ff_label', _label);
  }

  void removeFromLabel(String _value) {
    _label.remove(_value);
    prefs.setStringList('ff_label', _label);
  }

  void removeAtIndexFromLabel(int _index) {
    _label.removeAt(_index);
    prefs.setStringList('ff_label', _label);
  }

  void updateLabelAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _label[_index] = updateFn(_label[_index]);
    prefs.setStringList('ff_label', _label);
  }

  void insertAtIndexInLabel(int _index, String _value) {
    _label.insert(_index, _value);
    prefs.setStringList('ff_label', _label);
  }

  List<double> _values1 = [2000, 2200, 1800, 3010];
  List<double> get values1 => _values1;
  set values1(List<double> _value) {
    _values1 = _value;
    prefs.setStringList('ff_values1', _value.map((x) => x.toString()).toList());
  }

  void addToValues1(double _value) {
    _values1.add(_value);
    prefs.setStringList(
        'ff_values1s1', _values1.map((x) => x.toString()).toList());
  }

  void removeFromValues1(double _value) {
    _values1.remove(_value);
    prefs.setStringList(
        'ff_values1s1', _values1.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromValues1(int _index) {
    _values1.removeAt(_index);
    prefs.setStringList(
        'ff_values1s1', _values1.map((x) => x.toString()).toList());
  }

  void updateValues1AtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _values1[_index] = updateFn(_values1[_index]);
    prefs.setStringList(
        'ff_values1s1', _values1.map((x) => x.toString()).toList());
  }

  void insertAtIndexInValues1(int _index, double _value) {
    _values1.insert(_index, _value);
    prefs.setStringList(
        'ff_values1s1', _values1.map((x) => x.toString()).toList());
  }

  DateTime? _dateSelect = DateTime.fromMillisecondsSinceEpoch(1666381860000);
  DateTime? get dateSelect => _dateSelect;
  set dateSelect(DateTime? _value) {
    _dateSelect = _value;
  }

  bool _escolhaTrue = false;
  bool get escolhaTrue => _escolhaTrue;
  set escolhaTrue(bool _value) {
    _escolhaTrue = _value;
  }

  DateTime? _escolhaData = DateTime.fromMillisecondsSinceEpoch(1666382520000);
  DateTime? get escolhaData => _escolhaData;
  set escolhaData(DateTime? _value) {
    _escolhaData = _value;
  }

  String _date = '';
  String get date => _date;
  set date(String _value) {
    _date = _value;
  }

  double _valorTotal = 0.0;
  double get valorTotal => _valorTotal;
  set valorTotal(double _value) {
    _valorTotal = _value;
  }

  List<DocumentReference> _servicos = [];
  List<DocumentReference> get servicos => _servicos;
  set servicos(List<DocumentReference> _value) {
    _servicos = _value;
  }

  void addToServicos(DocumentReference _value) {
    _servicos.add(_value);
  }

  void removeFromServicos(DocumentReference _value) {
    _servicos.remove(_value);
  }

  void removeAtIndexFromServicos(int _index) {
    _servicos.removeAt(_index);
  }

  void updateServicosAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _servicos[_index] = updateFn(_servicos[_index]);
  }

  void insertAtIndexInServicos(int _index, DocumentReference _value) {
    _servicos.insert(_index, _value);
  }

  List<String> _criarServPac = [];
  List<String> get criarServPac => _criarServPac;
  set criarServPac(List<String> _value) {
    _criarServPac = _value;
  }

  void addToCriarServPac(String _value) {
    _criarServPac.add(_value);
  }

  void removeFromCriarServPac(String _value) {
    _criarServPac.remove(_value);
  }

  void removeAtIndexFromCriarServPac(int _index) {
    _criarServPac.removeAt(_index);
  }

  void updateCriarServPacAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _criarServPac[_index] = updateFn(_criarServPac[_index]);
  }

  void insertAtIndexInCriarServPac(int _index, String _value) {
    _criarServPac.insert(_index, _value);
  }

  DateTime? _clickAtual;
  DateTime? get clickAtual => _clickAtual;
  set clickAtual(DateTime? _value) {
    _clickAtual = _value;
  }

  List<DocumentReference> _empresasFav = [];
  List<DocumentReference> get empresasFav => _empresasFav;
  set empresasFav(List<DocumentReference> _value) {
    _empresasFav = _value;
    prefs.setStringList('ff_empresasFav', _value.map((x) => x.path).toList());
  }

  void addToEmpresasFav(DocumentReference _value) {
    _empresasFav.add(_value);
    prefs.setStringList(
        'ff_empresasFav', _empresasFav.map((x) => x.path).toList());
  }

  void removeFromEmpresasFav(DocumentReference _value) {
    _empresasFav.remove(_value);
    prefs.setStringList(
        'ff_empresasFav', _empresasFav.map((x) => x.path).toList());
  }

  void removeAtIndexFromEmpresasFav(int _index) {
    _empresasFav.removeAt(_index);
    prefs.setStringList(
        'ff_empresasFav', _empresasFav.map((x) => x.path).toList());
  }

  void updateEmpresasFavAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _empresasFav[_index] = updateFn(_empresasFav[_index]);
    prefs.setStringList(
        'ff_empresasFav', _empresasFav.map((x) => x.path).toList());
  }

  void insertAtIndexInEmpresasFav(int _index, DocumentReference _value) {
    _empresasFav.insert(_index, _value);
    prefs.setStringList(
        'ff_empresasFav', _empresasFav.map((x) => x.path).toList());
  }

  String _dataFiltroDDMMYYYY = '';
  String get dataFiltroDDMMYYYY => _dataFiltroDDMMYYYY;
  set dataFiltroDDMMYYYY(String _value) {
    _dataFiltroDDMMYYYY = _value;
  }

  bool _PesquisaON = false;
  bool get PesquisaON => _PesquisaON;
  set PesquisaON(bool _value) {
    _PesquisaON = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
