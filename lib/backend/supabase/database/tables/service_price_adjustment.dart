import '../database.dart';

class ServicePriceAdjustmentTable
    extends SupabaseTable<ServicePriceAdjustmentRow> {
  @override
  String get tableName => 'service_price_adjustment';

  @override
  ServicePriceAdjustmentRow createRow(Map<String, dynamic> data) =>
      ServicePriceAdjustmentRow(data);
}

class ServicePriceAdjustmentRow extends SupabaseDataRow {
  ServicePriceAdjustmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServicePriceAdjustmentTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get adjustmentName => getField<String>('adjustment_name');
  set adjustmentName(String? value) =>
      setField<String>('adjustment_name', value);

  String? get garageId => getField<String>('garage_id');
  set garageId(String? value) => setField<String>('garage_id', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
