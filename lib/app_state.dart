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

  int _currentTab = 0;
  int get currentTab => _currentTab;
  set currentTab(int value) {
    _currentTab = value;
  }

  List<String> _myRegistration = [];
  List<String> get myRegistration => _myRegistration;
  set myRegistration(List<String> value) {
    _myRegistration = value;
  }

  void addToMyRegistration(String value) {
    myRegistration.add(value);
  }

  void removeFromMyRegistration(String value) {
    myRegistration.remove(value);
  }

  void removeAtIndexFromMyRegistration(int index) {
    myRegistration.removeAt(index);
  }

  void updateMyRegistrationAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    myRegistration[index] = updateFn(_myRegistration[index]);
  }

  void insertAtIndexInMyRegistration(int index, String value) {
    myRegistration.insert(index, value);
  }
}
