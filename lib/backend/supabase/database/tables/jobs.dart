import '../database.dart';

class JobsTable extends SupabaseTable<JobsRow> {
  @override
  String get tableName => 'jobs';

  @override
  JobsRow createRow(Map<String, dynamic> data) => JobsRow(data);
}

class JobsRow extends SupabaseDataRow {
  JobsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => JobsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get vehicleId => getField<String>('vehicle_id');
  set vehicleId(String? value) => setField<String>('vehicle_id', value);

  String? get garageId => getField<String>('garage_id');
  set garageId(String? value) => setField<String>('garage_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  double? get estimatedCost => getField<double>('estimated_cost');
  set estimatedCost(double? value) => setField<double>('estimated_cost', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
