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

  String? get addressLine1 => getField<String>('address_line_1');
  set addressLine1(String? value) => setField<String>('address_line_1', value);

  String? get addressLine2 => getField<String>('address_line_2');
  set addressLine2(String? value) => setField<String>('address_line_2', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  String? get geoLocation => getField<String>('geo_location');
  set geoLocation(String? value) => setField<String>('geo_location', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
