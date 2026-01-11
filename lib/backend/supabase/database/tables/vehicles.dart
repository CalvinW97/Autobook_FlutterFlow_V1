import '../database.dart';

class VehiclesTable extends SupabaseTable<VehiclesRow> {
  @override
  String get tableName => 'vehicles';

  @override
  VehiclesRow createRow(Map<String, dynamic> data) => VehiclesRow(data);
}

class VehiclesRow extends SupabaseDataRow {
  VehiclesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VehiclesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get ownerId => getField<String>('owner_id');
  set ownerId(String? value) => setField<String>('owner_id', value);

  String get regNumber => getField<String>('reg_number')!;
  set regNumber(String value) => setField<String>('reg_number', value);

  String? get make => getField<String>('make');
  set make(String? value) => setField<String>('make', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  int? get yearOfManufacture => getField<int>('year_of_manufacture');
  set yearOfManufacture(int? value) =>
      setField<int>('year_of_manufacture', value);

  DateTime? get motDueDate => getField<DateTime>('mot_due_date');
  set motDueDate(DateTime? value) => setField<DateTime>('mot_due_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
