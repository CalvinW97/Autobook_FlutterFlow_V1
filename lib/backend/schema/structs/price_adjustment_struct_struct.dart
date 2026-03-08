// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Data type to specify the data required for each price adjustment types
class PriceAdjustmentStructStruct extends BaseStruct {
  PriceAdjustmentStructStruct({
    String? label,
    double? price,
    double? minValue,
    double? maxValue,
  })  : _label = label,
        _price = price,
        _minValue = minValue,
        _maxValue = maxValue;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "min_value" field.
  double? _minValue;
  double get minValue => _minValue ?? 0.0;
  set minValue(double? val) => _minValue = val;

  void incrementMinValue(double amount) => minValue = minValue + amount;

  bool hasMinValue() => _minValue != null;

  // "max_value" field.
  double? _maxValue;
  double get maxValue => _maxValue ?? 0.0;
  set maxValue(double? val) => _maxValue = val;

  void incrementMaxValue(double amount) => maxValue = maxValue + amount;

  bool hasMaxValue() => _maxValue != null;

  static PriceAdjustmentStructStruct fromMap(Map<String, dynamic> data) =>
      PriceAdjustmentStructStruct(
        label: data['label'] as String?,
        price: castToType<double>(data['price']),
        minValue: castToType<double>(data['min_value']),
        maxValue: castToType<double>(data['max_value']),
      );

  static PriceAdjustmentStructStruct? maybeFromMap(dynamic data) => data is Map
      ? PriceAdjustmentStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'label': _label,
        'price': _price,
        'min_value': _minValue,
        'max_value': _maxValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'min_value': serializeParam(
          _minValue,
          ParamType.double,
        ),
        'max_value': serializeParam(
          _maxValue,
          ParamType.double,
        ),
      }.withoutNulls;

  static PriceAdjustmentStructStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PriceAdjustmentStructStruct(
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        minValue: deserializeParam(
          data['min_value'],
          ParamType.double,
          false,
        ),
        maxValue: deserializeParam(
          data['max_value'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PriceAdjustmentStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PriceAdjustmentStructStruct &&
        label == other.label &&
        price == other.price &&
        minValue == other.minValue &&
        maxValue == other.maxValue;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([label, price, minValue, maxValue]);
}

PriceAdjustmentStructStruct createPriceAdjustmentStructStruct({
  String? label,
  double? price,
  double? minValue,
  double? maxValue,
}) =>
    PriceAdjustmentStructStruct(
      label: label,
      price: price,
      minValue: minValue,
      maxValue: maxValue,
    );
