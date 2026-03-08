// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Data for speciifc service such as name and price
class ServiceOfferingStructStruct extends BaseStruct {
  ServiceOfferingStructStruct({
    /// Name of service ie Interim Service or Full Service
    String? serviceName,

    /// Price of that service for a specific vehicle
    double? price,

    /// Unique ID key from supabase table
    String? id,

    /// Type of service ie
    /// Service
    /// MOT
    /// Brakes
    String? type,
  })  : _serviceName = serviceName,
        _price = price,
        _id = id,
        _type = type;

  // "ServiceName" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  set serviceName(String? val) => _serviceName = val;

  bool hasServiceName() => _serviceName != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static ServiceOfferingStructStruct fromMap(Map<String, dynamic> data) =>
      ServiceOfferingStructStruct(
        serviceName: data['ServiceName'] as String?,
        price: castToType<double>(data['Price']),
        id: data['ID'] as String?,
        type: data['Type'] as String?,
      );

  static ServiceOfferingStructStruct? maybeFromMap(dynamic data) => data is Map
      ? ServiceOfferingStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ServiceName': _serviceName,
        'Price': _price,
        'ID': _id,
        'Type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ServiceName': serializeParam(
          _serviceName,
          ParamType.String,
        ),
        'Price': serializeParam(
          _price,
          ParamType.double,
        ),
        'ID': serializeParam(
          _id,
          ParamType.String,
        ),
        'Type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static ServiceOfferingStructStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ServiceOfferingStructStruct(
        serviceName: deserializeParam(
          data['ServiceName'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['Price'],
          ParamType.double,
          false,
        ),
        id: deserializeParam(
          data['ID'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['Type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ServiceOfferingStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServiceOfferingStructStruct &&
        serviceName == other.serviceName &&
        price == other.price &&
        id == other.id &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([serviceName, price, id, type]);
}

ServiceOfferingStructStruct createServiceOfferingStructStruct({
  String? serviceName,
  double? price,
  String? id,
  String? type,
}) =>
    ServiceOfferingStructStruct(
      serviceName: serviceName,
      price: price,
      id: id,
      type: type,
    );
