import '../database.dart';

class GarageStaffTable extends SupabaseTable<GarageStaffRow> {
  @override
  String get tableName => 'garage_staff';

  @override
  GarageStaffRow createRow(Map<String, dynamic> data) => GarageStaffRow(data);
}

class GarageStaffRow extends SupabaseDataRow {
  GarageStaffRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GarageStaffTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get garageId => getField<String>('garage_id')!;
  set garageId(String value) => setField<String>('garage_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get staffType => getField<String>('staff_type');
  set staffType(String? value) => setField<String>('staff_type', value);
}
