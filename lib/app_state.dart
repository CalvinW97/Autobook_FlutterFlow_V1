import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
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

  /// Selector for garage tab
  int _garageTabIndex = 0;
  int get garageTabIndex => _garageTabIndex;
  set garageTabIndex(int value) {
    _garageTabIndex = value;
  }

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

  final _servicesListManager = FutureRequestManager<List<ServicesRow>>();
  Future<List<ServicesRow>> servicesList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ServicesRow>> Function() requestFn,
  }) =>
      _servicesListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearServicesListCache() => _servicesListManager.clear();
  void clearServicesListCacheKey(String? uniqueKey) =>
      _servicesListManager.clearRequest(uniqueKey);
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
