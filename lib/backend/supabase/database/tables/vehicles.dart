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

  String? get motDueDate => getField<String>('mot_due_date');
  set motDueDate(String? value) => setField<String>('mot_due_date', value);

  String? get createdAt => getField<String>('created_at');
  set createdAt(String? value) => setField<String>('created_at', value);

  String? get colour => getField<String>('colour');
  set colour(String? value) => setField<String>('colour', value);

  String? get taxDueDate => getField<String>('tax_due_date');
  set taxDueDate(String? value) => setField<String>('tax_due_date', value);

  String? get fuelType => getField<String>('fuel_type');
  set fuelType(String? value) => setField<String>('fuel_type', value);
}
