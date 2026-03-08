import '../database.dart';

class FuelPriceAdjustmentTable extends SupabaseTable<FuelPriceAdjustmentRow> {
  @override
  String get tableName => 'fuel_price_adjustment';

  @override
  FuelPriceAdjustmentRow createRow(Map<String, dynamic> data) =>
      FuelPriceAdjustmentRow(data);
}

class FuelPriceAdjustmentRow extends SupabaseDataRow {
  FuelPriceAdjustmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FuelPriceAdjustmentTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get adjustmentId => getField<String>('adjustment_id');
  set adjustmentId(String? value) => setField<String>('adjustment_id', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);
}
