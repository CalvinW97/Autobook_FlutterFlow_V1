// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListingDataStruct extends BaseStruct {
  ListingDataStruct({
    String? garageId,
    double? distMiles,
    String? businessName,
    List<MatchedServicesStruct>? matchedServices,
    double? minServicePrice,
  })  : _garageId = garageId,
        _distMiles = distMiles,
        _businessName = businessName,
        _matchedServices = matchedServices,
        _minServicePrice = minServicePrice;

  // "garage_id" field.
  String? _garageId;
  String get garageId => _garageId ?? '';
  set garageId(String? val) => _garageId = val;

  bool hasGarageId() => _garageId != null;

  // "dist_miles" field.
  double? _distMiles;
  double get distMiles => _distMiles ?? 0.0;
  set distMiles(double? val) => _distMiles = val;

  void incrementDistMiles(double amount) => distMiles = distMiles + amount;

  bool hasDistMiles() => _distMiles != null;

  // "business_name" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  set businessName(String? val) => _businessName = val;

  bool hasBusinessName() => _businessName != null;

  // "matched_services" field.
  List<MatchedServicesStruct>? _matchedServices;
  List<MatchedServicesStruct> get matchedServices =>
      _matchedServices ?? const [];
  set matchedServices(List<MatchedServicesStruct>? val) =>
      _matchedServices = val;

  void updateMatchedServices(Function(List<MatchedServicesStruct>) updateFn) {
    updateFn(_matchedServices ??= []);
  }

  bool hasMatchedServices() => _matchedServices != null;

  // "min_service_price" field.
  double? _minServicePrice;
  double get minServicePrice => _minServicePrice ?? 0.0;
  set minServicePrice(double? val) => _minServicePrice = val;

  void incrementMinServicePrice(double amount) =>
      minServicePrice = minServicePrice + amount;

  bool hasMinServicePrice() => _minServicePrice != null;

  static ListingDataStruct fromMap(Map<String, dynamic> data) =>
      ListingDataStruct(
        garageId: data['garage_id'] as String?,
        distMiles: castToType<double>(data['dist_miles']),
        businessName: data['business_name'] as String?,
        matchedServices: getStructList(
          data['matched_services'],
          MatchedServicesStruct.fromMap,
        ),
        minServicePrice: castToType<double>(data['min_service_price']),
      );

  static ListingDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ListingDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'garage_id': _garageId,
        'dist_miles': _distMiles,
        'business_name': _businessName,
        'matched_services': _matchedServices?.map((e) => e.toMap()).toList(),
        'min_service_price': _minServicePrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'garage_id': serializeParam(
          _garageId,
          ParamType.String,
        ),
        'dist_miles': serializeParam(
          _distMiles,
          ParamType.double,
        ),
        'business_name': serializeParam(
          _businessName,
          ParamType.String,
        ),
        'matched_services': serializeParam(
          _matchedServices,
          ParamType.DataStruct,
          isList: true,
        ),
        'min_service_price': serializeParam(
          _minServicePrice,
          ParamType.double,
        ),
      }.withoutNulls;

  static ListingDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListingDataStruct(
        garageId: deserializeParam(
          data['garage_id'],
          ParamType.String,
          false,
        ),
        distMiles: deserializeParam(
          data['dist_miles'],
          ParamType.double,
          false,
        ),
        businessName: deserializeParam(
          data['business_name'],
          ParamType.String,
          false,
        ),
        matchedServices: deserializeStructParam<MatchedServicesStruct>(
          data['matched_services'],
          ParamType.DataStruct,
          true,
          structBuilder: MatchedServicesStruct.fromSerializableMap,
        ),
        minServicePrice: deserializeParam(
          data['min_service_price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ListingDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListingDataStruct &&
        garageId == other.garageId &&
        distMiles == other.distMiles &&
        businessName == other.businessName &&
        listEquality.equals(matchedServices, other.matchedServices) &&
        minServicePrice == other.minServicePrice;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [garageId, distMiles, businessName, matchedServices, minServicePrice]);
}

ListingDataStruct createListingDataStruct({
  String? garageId,
  double? distMiles,
  String? businessName,
  double? minServicePrice,
}) =>
    ListingDataStruct(
      garageId: garageId,
      distMiles: distMiles,
      businessName: businessName,
      minServicePrice: minServicePrice,
    );
