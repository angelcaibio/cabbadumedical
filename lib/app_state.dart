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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _scheduletime = [];
  List<String> get scheduletime => _scheduletime;
  set scheduletime(List<String> value) {
    _scheduletime = value;
  }

  void addToScheduletime(String value) {
    scheduletime.add(value);
  }

  void removeFromScheduletime(String value) {
    scheduletime.remove(value);
  }

  void removeAtIndexFromScheduletime(int index) {
    scheduletime.removeAt(index);
  }

  void updateScheduletimeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    scheduletime[index] = updateFn(_scheduletime[index]);
  }

  void insertAtIndexInScheduletime(int index, String value) {
    scheduletime.insert(index, value);
  }

  List<String> _hospital = [];
  List<String> get hospital => _hospital;
  set hospital(List<String> value) {
    _hospital = value;
  }

  void addToHospital(String value) {
    hospital.add(value);
  }

  void removeFromHospital(String value) {
    hospital.remove(value);
  }

  void removeAtIndexFromHospital(int index) {
    hospital.removeAt(index);
  }

  void updateHospitalAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    hospital[index] = updateFn(_hospital[index]);
  }

  void insertAtIndexInHospital(int index, String value) {
    hospital.insert(index, value);
  }
}
