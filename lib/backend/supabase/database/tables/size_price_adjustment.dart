import '../database.dart';

class SizePriceAdjustmentTable extends SupabaseTable<SizePriceAdjustmentRow> {
  @override
  String get tableName => 'size_price_adjustment';

  @override
  SizePriceAdjustmentRow createRow(Map<String, dynamic> data) =>
      SizePriceAdjustmentRow(data);
}

class SizePriceAdjustmentRow extends SupabaseDataRow {
  SizePriceAdjustmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SizePriceAdjustmentTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get adjustmentId => getField<String>('adjustment_id');
  set adjustmentId(String? value) => setField<String>('adjustment_id', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  double? get minSize => getField<double>('min_size');
  set minSize(double? value) => setField<double>('min_size', value);

  double? get maxSize => getField<double>('max_size');
  set maxSize(double? value) => setField<double>('max_size', value);
}
