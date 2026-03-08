// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Data structure to store all garage listing data.
///
/// Inlucdes but not limited to :
/// Business Name
/// Business Description
/// Listing Photos
/// Pricing
/// Opening Hours
/// Distance
class ListingDataStructStruct extends BaseStruct {
  ListingDataStructStruct({
    /// Unique supabase ID key of garage
    String? garageID,

    /// Business Name of garage
    String? garageName,

    /// Description of garage.
    ///
    /// Is written by garage owner
    String? description,

    /// Lisat of image URLs used in listing
    List<String>? imageURLs,

    /// Distance from user
    double? distanceMiles,

    /// Opening hourse of garage
    List<String>? openingHours,

    /// garage star rating
    double? rating,
    List<ServiceOfferingStructStruct>? serviceData,
  })  : _garageID = garageID,
        _garageName = garageName,
        _description = description,
        _imageURLs = imageURLs,
        _distanceMiles = distanceMiles,
        _openingHours = openingHours,
        _rating = rating,
        _serviceData = serviceData;

  // "GarageID" field.
  String? _garageID;
  String get garageID => _garageID ?? '';
  set garageID(String? val) => _garageID = val;

  bool hasGarageID() => _garageID != null;

  // "GarageName" field.
  String? _garageName;
  String get garageName => _garageName ?? '';
  set garageName(String? val) => _garageName = val;

  bool hasGarageName() => _garageName != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "ImageURLs" field.
  List<String>? _imageURLs;
  List<String> get imageURLs => _imageURLs ?? const [];
  set imageURLs(List<String>? val) => _imageURLs = val;

  void updateImageURLs(Function(List<String>) updateFn) {
    updateFn(_imageURLs ??= []);
  }

  bool hasImageURLs() => _imageURLs != null;

  // "DistanceMiles" field.
  double? _distanceMiles;
  double get distanceMiles => _distanceMiles ?? 0.0;
  set distanceMiles(double? val) => _distanceMiles = val;

  void incrementDistanceMiles(double amount) =>
      distanceMiles = distanceMiles + amount;

  bool hasDistanceMiles() => _distanceMiles != null;

  // "OpeningHours" field.
  List<String>? _openingHours;
  List<String> get openingHours => _openingHours ?? const [];
  set openingHours(List<String>? val) => _openingHours = val;

  void updateOpeningHours(Function(List<String>) updateFn) {
    updateFn(_openingHours ??= []);
  }

  bool hasOpeningHours() => _openingHours != null;

  // "Rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "ServiceData" field.
  List<ServiceOfferingStructStruct>? _serviceData;
  List<ServiceOfferingStructStruct> get serviceData => _serviceData ?? const [];
  set serviceData(List<ServiceOfferingStructStruct>? val) => _serviceData = val;

  void updateServiceData(Function(List<ServiceOfferingStructStruct>) updateFn) {
    updateFn(_serviceData ??= []);
  }

  bool hasServiceData() => _serviceData != null;

  static ListingDataStructStruct fromMap(Map<String, dynamic> data) =>
      ListingDataStructStruct(
        garageID: data['GarageID'] as String?,
        garageName: data['GarageName'] as String?,
        description: data['Description'] as String?,
        imageURLs: getDataList(data['ImageURLs']),
        distanceMiles: castToType<double>(data['DistanceMiles']),
        openingHours: getDataList(data['OpeningHours']),
        rating: castToType<double>(data['Rating']),
        serviceData: getStructList(
          data['ServiceData'],
          ServiceOfferingStructStruct.fromMap,
        ),
      );

  static ListingDataStructStruct? maybeFromMap(dynamic data) => data is Map
      ? ListingDataStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'GarageID': _garageID,
        'GarageName': _garageName,
        'Description': _description,
        'ImageURLs': _imageURLs,
        'DistanceMiles': _distanceMiles,
        'OpeningHours': _openingHours,
        'Rating': _rating,
        'ServiceData': _serviceData?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'GarageID': serializeParam(
          _garageID,
          ParamType.String,
        ),
        'GarageName': serializeParam(
          _garageName,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
        'ImageURLs': serializeParam(
          _imageURLs,
          ParamType.String,
          isList: true,
        ),
        'DistanceMiles': serializeParam(
          _distanceMiles,
          ParamType.double,
        ),
        'OpeningHours': serializeParam(
          _openingHours,
          ParamType.String,
          isList: true,
        ),
        'Rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'ServiceData': serializeParam(
          _serviceData,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ListingDataStructStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ListingDataStructStruct(
        garageID: deserializeParam(
          data['GarageID'],
          ParamType.String,
          false,
        ),
        garageName: deserializeParam(
          data['GarageName'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
        imageURLs: deserializeParam<String>(
          data['ImageURLs'],
          ParamType.String,
          true,
        ),
        distanceMiles: deserializeParam(
          data['DistanceMiles'],
          ParamType.double,
          false,
        ),
        openingHours: deserializeParam<String>(
          data['OpeningHours'],
          ParamType.String,
          true,
        ),
        rating: deserializeParam(
          data['Rating'],
          ParamType.double,
          false,
        ),
        serviceData: deserializeStructParam<ServiceOfferingStructStruct>(
          data['ServiceData'],
          ParamType.DataStruct,
          true,
          structBuilder: ServiceOfferingStructStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ListingDataStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListingDataStructStruct &&
        garageID == other.garageID &&
        garageName == other.garageName &&
        description == other.description &&
        listEquality.equals(imageURLs, other.imageURLs) &&
        distanceMiles == other.distanceMiles &&
        listEquality.equals(openingHours, other.openingHours) &&
        rating == other.rating &&
        listEquality.equals(serviceData, other.serviceData);
  }

  @override
  int get hashCode => const ListEquality().hash([
        garageID,
        garageName,
        description,
        imageURLs,
        distanceMiles,
        openingHours,
        rating,
        serviceData
      ]);
}

ListingDataStructStruct createListingDataStructStruct({
  String? garageID,
  String? garageName,
  String? description,
  double? distanceMiles,
  double? rating,
}) =>
    ListingDataStructStruct(
      garageID: garageID,
      garageName: garageName,
      description: description,
      distanceMiles: distanceMiles,
      rating: rating,
    );
