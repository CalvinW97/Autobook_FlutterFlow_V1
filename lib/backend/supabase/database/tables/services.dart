import '../database.dart';

class ServicesTable extends SupabaseTable<ServicesRow> {
  @override
  String get tableName => 'services';

  @override
  ServicesRow createRow(Map<String, dynamic> data) => ServicesRow(data);
}

class ServicesRow extends SupabaseDataRow {
  ServicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServicesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get garageId => getField<String>('garage_id')!;
  set garageId(String value) => setField<String>('garage_id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  bool? get isInstantBooking => getField<bool>('is_instant_booking');
  set isInstantBooking(bool? value) =>
      setField<bool>('is_instant_booking', value);
}
