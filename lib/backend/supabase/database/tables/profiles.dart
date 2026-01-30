import '../database.dart';

class ProfilesTable extends SupabaseTable<ProfilesRow> {
  @override
  String get tableName => 'profiles';

  @override
  ProfilesRow createRow(Map<String, dynamic> data) => ProfilesRow(data);
}

class ProfilesRow extends SupabaseDataRow {
  ProfilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfilesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get postcode => getField<String>('postcode');
  set postcode(String? value) => setField<String>('postcode', value);

  String? get garageId => getField<String>('garage_id');
  set garageId(String? value) => setField<String>('garage_id', value);
}
