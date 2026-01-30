// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceDataStructStruct extends BaseStruct {
  ServiceDataStructStruct({
    String? name,
    double? priceSmall,
    double? priceMedium,
    double? priceLarge,
    bool? isInstantBookable,
    String? description,
    String? type,
  })  : _name = name,
        _priceSmall = priceSmall,
        _priceMedium = priceMedium,
        _priceLarge = priceLarge,
        _isInstantBookable = isInstantBookable,
        _description = description,
        _type = type;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "PriceSmall" field.
  double? _priceSmall;
  double get priceSmall => _priceSmall ?? 0.0;
  set priceSmall(double? val) => _priceSmall = val;

  void incrementPriceSmall(double amount) => priceSmall = priceSmall + amount;

  bool hasPriceSmall() => _priceSmall != null;

  // "PriceMedium" field.
  double? _priceMedium;
  double get priceMedium => _priceMedium ?? 0.0;
  set priceMedium(double? val) => _priceMedium = val;

  void incrementPriceMedium(double amount) =>
      priceMedium = priceMedium + amount;

  bool hasPriceMedium() => _priceMedium != null;

  // "PriceLarge" field.
  double? _priceLarge;
  double get priceLarge => _priceLarge ?? 0.0;
  set priceLarge(double? val) => _priceLarge = val;

  void incrementPriceLarge(double amount) => priceLarge = priceLarge + amount;

  bool hasPriceLarge() => _priceLarge != null;

  // "IsInstantBookable" field.
  bool? _isInstantBookable;
  bool get isInstantBookable => _isInstantBookable ?? false;
  set isInstantBookable(bool? val) => _isInstantBookable = val;

  bool hasIsInstantBookable() => _isInstantBookable != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static ServiceDataStructStruct fromMap(Map<String, dynamic> data) =>
      ServiceDataStructStruct(
        name: data['Name'] as String?,
        priceSmall: castToType<double>(data['PriceSmall']),
        priceMedium: castToType<double>(data['PriceMedium']),
        priceLarge: castToType<double>(data['PriceLarge']),
        isInstantBookable: data['IsInstantBookable'] as bool?,
        description: data['Description'] as String?,
        type: data['Type'] as String?,
      );

  static ServiceDataStructStruct? maybeFromMap(dynamic data) => data is Map
      ? ServiceDataStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'PriceSmall': _priceSmall,
        'PriceMedium': _priceMedium,
        'PriceLarge': _priceLarge,
        'IsInstantBookable': _isInstantBookable,
        'Description': _description,
        'Type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'PriceSmall': serializeParam(
          _priceSmall,
          ParamType.double,
        ),
        'PriceMedium': serializeParam(
          _priceMedium,
          ParamType.double,
        ),
        'PriceLarge': serializeParam(
          _priceLarge,
          ParamType.double,
        ),
        'IsInstantBookable': serializeParam(
          _isInstantBookable,
          ParamType.bool,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
        'Type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static ServiceDataStructStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ServiceDataStructStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        priceSmall: deserializeParam(
          data['PriceSmall'],
          ParamType.double,
          false,
        ),
        priceMedium: deserializeParam(
          data['PriceMedium'],
          ParamType.double,
          false,
        ),
        priceLarge: deserializeParam(
          data['PriceLarge'],
          ParamType.double,
          false,
        ),
        isInstantBookable: deserializeParam(
          data['IsInstantBookable'],
          ParamType.bool,
          false,
        ),
        description: deserializeParam(
          data['Description'],
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
  String toString() => 'ServiceDataStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServiceDataStructStruct &&
        name == other.name &&
        priceSmall == other.priceSmall &&
        priceMedium == other.priceMedium &&
        priceLarge == other.priceLarge &&
        isInstantBookable == other.isInstantBookable &&
        description == other.description &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        priceSmall,
        priceMedium,
        priceLarge,
        isInstantBookable,
        description,
        type
      ]);
}

ServiceDataStructStruct createServiceDataStructStruct({
  String? name,
  double? priceSmall,
  double? priceMedium,
  double? priceLarge,
  bool? isInstantBookable,
  String? description,
  String? type,
}) =>
    ServiceDataStructStruct(
      name: name,
      priceSmall: priceSmall,
      priceMedium: priceMedium,
      priceLarge: priceLarge,
      isInstantBookable: isInstantBookable,
      description: description,
      type: type,
    );
