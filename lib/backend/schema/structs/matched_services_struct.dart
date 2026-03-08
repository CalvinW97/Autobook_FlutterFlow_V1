// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatchedServicesStruct extends BaseStruct {
  MatchedServicesStruct({
    double? price,
    String? serviceId,
    String? serviceName,
  })  : _price = price,
        _serviceId = serviceId,
        _serviceName = serviceName;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "service_id" field.
  String? _serviceId;
  String get serviceId => _serviceId ?? '';
  set serviceId(String? val) => _serviceId = val;

  bool hasServiceId() => _serviceId != null;

  // "service_name" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  set serviceName(String? val) => _serviceName = val;

  bool hasServiceName() => _serviceName != null;

  static MatchedServicesStruct fromMap(Map<String, dynamic> data) =>
      MatchedServicesStruct(
        price: castToType<double>(data['price']),
        serviceId: data['service_id'] as String?,
        serviceName: data['service_name'] as String?,
      );

  static MatchedServicesStruct? maybeFromMap(dynamic data) => data is Map
      ? MatchedServicesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'price': _price,
        'service_id': _serviceId,
        'service_name': _serviceName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'service_id': serializeParam(
          _serviceId,
          ParamType.String,
        ),
        'service_name': serializeParam(
          _serviceName,
          ParamType.String,
        ),
      }.withoutNulls;

  static MatchedServicesStruct fromSerializableMap(Map<String, dynamic> data) =>
      MatchedServicesStruct(
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        serviceId: deserializeParam(
          data['service_id'],
          ParamType.String,
          false,
        ),
        serviceName: deserializeParam(
          data['service_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MatchedServicesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MatchedServicesStruct &&
        price == other.price &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([price, serviceId, serviceName]);
}

MatchedServicesStruct createMatchedServicesStruct({
  double? price,
  String? serviceId,
  String? serviceName,
}) =>
    MatchedServicesStruct(
      price: price,
      serviceId: serviceId,
      serviceName: serviceName,
    );
