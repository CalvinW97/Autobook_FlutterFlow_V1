import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
      if (prefs.containsKey('ff_ProfileData')) {
        try {
          final serializedData = prefs.getString('ff_ProfileData') ?? '{}';
          _ProfileData = ProfileDataStructStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// Selector for user tab
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

  /// Selector for garage page
  int _garageTabIndex = 0;
  int get garageTabIndex => _garageTabIndex;
  set garageTabIndex(int value) {
    _garageTabIndex = value;
  }

  /// Global variable which contains a users key information such as Names,
  /// role, garage ID etc.
  ///
  /// This is populated during app loading/ sign in. This redcues the number of
  /// supabase queries needed as the user navigates through the app.
  ProfileDataStructStruct _ProfileData =
      ProfileDataStructStruct.fromSerializableMap(jsonDecode('{}'));
  ProfileDataStructStruct get ProfileData => _ProfileData;
  set ProfileData(ProfileDataStructStruct value) {
    _ProfileData = value;
    prefs.setString('ff_ProfileData', value.serialize());
  }

  void updateProfileDataStruct(Function(ProfileDataStructStruct) updateFn) {
    updateFn(_ProfileData);
    prefs.setString('ff_ProfileData', _ProfileData.serialize());
  }

  /// This is the default or selected vehicle of the user.
  ///
  /// Use Vehicle ID only
  String _userVehicle = '';
  String get userVehicle => _userVehicle;
  set userVehicle(String value) {
    _userVehicle = value;
  }

  /// List of labels for price adjustment depending on vehicle fuel type
  List<String> _fuelPriceAdjustmentLabels = [
    'Petrol',
    'Diesel',
    'Hybrid',
    'EV'
  ];
  List<String> get fuelPriceAdjustmentLabels => _fuelPriceAdjustmentLabels;
  set fuelPriceAdjustmentLabels(List<String> value) {
    _fuelPriceAdjustmentLabels = value;
  }

  void addToFuelPriceAdjustmentLabels(String value) {
    fuelPriceAdjustmentLabels.add(value);
  }

  void removeFromFuelPriceAdjustmentLabels(String value) {
    fuelPriceAdjustmentLabels.remove(value);
  }

  void removeAtIndexFromFuelPriceAdjustmentLabels(int index) {
    fuelPriceAdjustmentLabels.removeAt(index);
  }

  void updateFuelPriceAdjustmentLabelsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    fuelPriceAdjustmentLabels[index] =
        updateFn(_fuelPriceAdjustmentLabels[index]);
  }

  void insertAtIndexInFuelPriceAdjustmentLabels(int index, String value) {
    fuelPriceAdjustmentLabels.insert(index, value);
  }
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
