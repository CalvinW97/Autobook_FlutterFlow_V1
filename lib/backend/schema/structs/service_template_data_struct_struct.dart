// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceTemplateDataStructStruct extends BaseStruct {
  ServiceTemplateDataStructStruct({
    String? id,
    String? description,
    String? serviceId,
    String? serviceName,
    String? whatsIncluded,
    String? serviceType,
  })  : _id = id,
        _description = description,
        _serviceId = serviceId,
        _serviceName = serviceName,
        _whatsIncluded = whatsIncluded,
        _serviceType = serviceType;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

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

  // "whats_included" field.
  String? _whatsIncluded;
  String get whatsIncluded => _whatsIncluded ?? '';
  set whatsIncluded(String? val) => _whatsIncluded = val;

  bool hasWhatsIncluded() => _whatsIncluded != null;

  // "service_type" field.
  String? _serviceType;
  String get serviceType => _serviceType ?? '';
  set serviceType(String? val) => _serviceType = val;

  bool hasServiceType() => _serviceType != null;

  static ServiceTemplateDataStructStruct fromMap(Map<String, dynamic> data) =>
      ServiceTemplateDataStructStruct(
        id: data['id'] as String?,
        description: data['description'] as String?,
        serviceId: data['service_id'] as String?,
        serviceName: data['service_name'] as String?,
        whatsIncluded: data['whats_included'] as String?,
        serviceType: data['service_type'] as String?,
      );

  static ServiceTemplateDataStructStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ServiceTemplateDataStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'description': _description,
        'service_id': _serviceId,
        'service_name': _serviceName,
        'whats_included': _whatsIncluded,
        'service_type': _serviceType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'service_id': serializeParam(
          _serviceId,
          ParamType.String,
        ),
        'service_name': serializeParam(
          _serviceName,
          ParamType.String,
        ),
        'whats_included': serializeParam(
          _whatsIncluded,
          ParamType.String,
        ),
        'service_type': serializeParam(
          _serviceType,
          ParamType.String,
        ),
      }.withoutNulls;

  static ServiceTemplateDataStructStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ServiceTemplateDataStructStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
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
        whatsIncluded: deserializeParam(
          data['whats_included'],
          ParamType.String,
          false,
        ),
        serviceType: deserializeParam(
          data['service_type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ServiceTemplateDataStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServiceTemplateDataStructStruct &&
        id == other.id &&
        description == other.description &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        whatsIncluded == other.whatsIncluded &&
        serviceType == other.serviceType;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, description, serviceId, serviceName, whatsIncluded, serviceType]);
}

ServiceTemplateDataStructStruct createServiceTemplateDataStructStruct({
  String? id,
  String? description,
  String? serviceId,
  String? serviceName,
  String? whatsIncluded,
  String? serviceType,
}) =>
    ServiceTemplateDataStructStruct(
      id: id,
      description: description,
      serviceId: serviceId,
      serviceName: serviceName,
      whatsIncluded: whatsIncluded,
      serviceType: serviceType,
    );
