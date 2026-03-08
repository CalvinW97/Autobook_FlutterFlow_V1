import '../database.dart';

class PriceAdjustmentSeedTable extends SupabaseTable<PriceAdjustmentSeedRow> {
  @override
  String get tableName => 'price_adjustment_seed';

  @override
  PriceAdjustmentSeedRow createRow(Map<String, dynamic> data) =>
      PriceAdjustmentSeedRow(data);
}

class PriceAdjustmentSeedRow extends SupabaseDataRow {
  PriceAdjustmentSeedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PriceAdjustmentSeedTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);

  String get label => getField<String>('label')!;
  set label(String value) => setField<String>('label', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
