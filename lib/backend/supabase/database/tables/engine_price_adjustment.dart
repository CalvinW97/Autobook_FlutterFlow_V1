import '../database.dart';

class EnginePriceAdjustmentTable
    extends SupabaseTable<EnginePriceAdjustmentRow> {
  @override
  String get tableName => 'engine_price_adjustment';

  @override
  EnginePriceAdjustmentRow createRow(Map<String, dynamic> data) =>
      EnginePriceAdjustmentRow(data);
}

class EnginePriceAdjustmentRow extends SupabaseDataRow {
  EnginePriceAdjustmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EnginePriceAdjustmentTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get adjustmentId => getField<String>('adjustment_id');
  set adjustmentId(String? value) => setField<String>('adjustment_id', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  double? get minEngine => getField<double>('min_engine');
  set minEngine(double? value) => setField<double>('min_engine', value);

  double? get maxEngine => getField<double>('max_engine');
  set maxEngine(double? value) => setField<double>('max_engine', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);
}
