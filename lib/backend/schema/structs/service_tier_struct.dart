// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceTierStruct extends BaseStruct {
  ServiceTierStruct({
    String? name,
    double? priceSmall,
    double? priceMedium,
    double? priceLarge,
    List<String>? checklist,
    bool? isInstantBookable,
  })  : _name = name,
        _priceSmall = priceSmall,
        _priceMedium = priceMedium,
        _priceLarge = priceLarge,
        _checklist = checklist,
        _isInstantBookable = isInstantBookable;

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

  // "Checklist" field.
  List<String>? _checklist;
  List<String> get checklist => _checklist ?? const [];
  set checklist(List<String>? val) => _checklist = val;

  void updateChecklist(Function(List<String>) updateFn) {
    updateFn(_checklist ??= []);
  }

  bool hasChecklist() => _checklist != null;

  // "IsInstantBookable" field.
  bool? _isInstantBookable;
  bool get isInstantBookable => _isInstantBookable ?? false;
  set isInstantBookable(bool? val) => _isInstantBookable = val;

  bool hasIsInstantBookable() => _isInstantBookable != null;

  static ServiceTierStruct fromMap(Map<String, dynamic> data) =>
      ServiceTierStruct(
        name: data['Name'] as String?,
        priceSmall: castToType<double>(data['PriceSmall']),
        priceMedium: castToType<double>(data['PriceMedium']),
        priceLarge: castToType<double>(data['PriceLarge']),
        checklist: getDataList(data['Checklist']),
        isInstantBookable: data['IsInstantBookable'] as bool?,
      );

  static ServiceTierStruct? maybeFromMap(dynamic data) => data is Map
      ? ServiceTierStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'PriceSmall': _priceSmall,
        'PriceMedium': _priceMedium,
        'PriceLarge': _priceLarge,
        'Checklist': _checklist,
        'IsInstantBookable': _isInstantBookable,
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
        'Checklist': serializeParam(
          _checklist,
          ParamType.String,
          isList: true,
        ),
        'IsInstantBookable': serializeParam(
          _isInstantBookable,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ServiceTierStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServiceTierStruct(
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
        checklist: deserializeParam<String>(
          data['Checklist'],
          ParamType.String,
          true,
        ),
        isInstantBookable: deserializeParam(
          data['IsInstantBookable'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ServiceTierStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ServiceTierStruct &&
        name == other.name &&
        priceSmall == other.priceSmall &&
        priceMedium == other.priceMedium &&
        priceLarge == other.priceLarge &&
        listEquality.equals(checklist, other.checklist) &&
        isInstantBookable == other.isInstantBookable;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        priceSmall,
        priceMedium,
        priceLarge,
        checklist,
        isInstantBookable
      ]);
}

ServiceTierStruct createServiceTierStruct({
  String? name,
  double? priceSmall,
  double? priceMedium,
  double? priceLarge,
  bool? isInstantBookable,
}) =>
    ServiceTierStruct(
      name: name,
      priceSmall: priceSmall,
      priceMedium: priceMedium,
      priceLarge: priceLarge,
      isInstantBookable: isInstantBookable,
    );
