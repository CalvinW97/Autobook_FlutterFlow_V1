import '../database.dart';

class GaragesTable extends SupabaseTable<GaragesRow> {
  @override
  String get tableName => 'garages';

  @override
  GaragesRow createRow(Map<String, dynamic> data) => GaragesRow(data);
}

class GaragesRow extends SupabaseDataRow {
  GaragesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GaragesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get ownerId => getField<String>('owner_id');
  set ownerId(String? value) => setField<String>('owner_id', value);

  String get businessName => getField<String>('business_name')!;
  set businessName(String value) => setField<String>('business_name', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  double? get motPrice => getField<double>('mot_price');
  set motPrice(double? value) => setField<double>('mot_price', value);

  double? get servicePriceSmall => getField<double>('service_price_small');
  set servicePriceSmall(double? value) =>
      setField<double>('service_price_small', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
