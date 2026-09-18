import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _dostavkapuli = 20000;
  int get dostavkapuli => _dostavkapuli;
  set dostavkapuli(int value) {
    _dostavkapuli = value;
  }

  int _buyurtmaSoni = 0;
  int get buyurtmaSoni => _buyurtmaSoni;
  set buyurtmaSoni(int value) {
    _buyurtmaSoni = value;
  }

  String _xodimIsmi = '';
  String get xodimIsmi => _xodimIsmi;
  set xodimIsmi(String value) {
    _xodimIsmi = value;
  }

  String _xodimMail = '';
  String get xodimMail => _xodimMail;
  set xodimMail(String value) {
    _xodimMail = value;
  }

  String _xodimSurati = '';
  String get xodimSurati => _xodimSurati;
  set xodimSurati(String value) {
    _xodimSurati = value;
  }

  String _xodimJinsi = '';
  String get xodimJinsi => _xodimJinsi;
  set xodimJinsi(String value) {
    _xodimJinsi = value;
  }

  DateTime? _xodimTugilganSana =
      DateTime.fromMillisecondsSinceEpoch(1789243140000);
  DateTime? get xodimTugilganSana => _xodimTugilganSana;
  set xodimTugilganSana(DateTime? value) {
    _xodimTugilganSana = value;
  }

  bool _faceIdYoqilgan = false;
  bool get faceIdYoqilgan => _faceIdYoqilgan;
  set faceIdYoqilgan(bool value) {
    _faceIdYoqilgan = value;
  }

  int _kunlikTushum = 0;
  int get kunlikTushum => _kunlikTushum;
  set kunlikTushum(int value) {
    _kunlikTushum = value;
  }

  int _faolOfitsiantlarSoni = 0;
  int get faolOfitsiantlarSoni => _faolOfitsiantlarSoni;
  set faolOfitsiantlarSoni(int value) {
    _faolOfitsiantlarSoni = value;
  }

  int _bandStollarSoni = 0;
  int get bandStollarSoni => _bandStollarSoni;
  set bandStollarSoni(int value) {
    _bandStollarSoni = value;
  }

  bool _oshStopda = false;
  bool get oshStopda => _oshStopda;
  set oshStopda(bool value) {
    _oshStopda = value;
  }

  int _ofitsiantFoizPuli = 0;
  int get ofitsiantFoizPuli => _ofitsiantFoizPuli;
  set ofitsiantFoizPuli(int value) {
    _ofitsiantFoizPuli = value;
  }

  int _ofitsiantChoyPuli = 0;
  int get ofitsiantChoyPuli => _ofitsiantChoyPuli;
  set ofitsiantChoyPuli(int value) {
    _ofitsiantChoyPuli = value;
  }

  int _tanlanganStolRaqami = 0;
  int get tanlanganStolRaqami => _tanlanganStolRaqami;
  set tanlanganStolRaqami(int value) {
    _tanlanganStolRaqami = value;
  }

  List<String> _savatchadagiTaomlar = [];
  List<String> get savatchadagiTaomlar => _savatchadagiTaomlar;
  set savatchadagiTaomlar(List<String> value) {
    _savatchadagiTaomlar = value;
  }

  void addToSavatchadagiTaomlar(String value) {
    savatchadagiTaomlar.add(value);
  }

  void removeFromSavatchadagiTaomlar(String value) {
    savatchadagiTaomlar.remove(value);
  }

  void removeAtIndexFromSavatchadagiTaomlar(int index) {
    savatchadagiTaomlar.removeAt(index);
  }

  void updateSavatchadagiTaomlarAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    savatchadagiTaomlar[index] = updateFn(_savatchadagiTaomlar[index]);
  }

  void insertAtIndexInSavatchadagiTaomlar(int index, String value) {
    savatchadagiTaomlar.insert(index, value);
  }

  bool _isDelivery = false;
  bool get isDelivery => _isDelivery;
  set isDelivery(bool value) {
    _isDelivery = value;
  }
}
