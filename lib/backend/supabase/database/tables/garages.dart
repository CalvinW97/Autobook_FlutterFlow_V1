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

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  double? get motPrice => getField<double>('mot_price');
  set motPrice(double? value) => setField<double>('mot_price', value);

  double? get servicePriceSmall => getField<double>('service_price_small');
  set servicePriceSmall(double? value) =>
      setField<double>('service_price_small', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get companyNumber => getField<String>('company_number');
  set companyNumber(String? value) => setField<String>('company_number', value);

  String? get addressLine1 => getField<String>('address_line_1');
  set addressLine1(String? value) => setField<String>('address_line_1', value);

  String? get addressLine2 => getField<String>('address_line_2');
  set addressLine2(String? value) => setField<String>('address_line_2', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get postcode => getField<String>('postcode');
  set postcode(String? value) => setField<String>('postcode', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  String get companyRegNumber => getField<String>('company_reg_number')!;
  set companyRegNumber(String value) =>
      setField<String>('company_reg_number', value);

  String? get geoLocation => getField<String>('geo_location');
  set geoLocation(String? value) => setField<String>('geo_location', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get images => getField<String>('images');
  set images(String? value) => setField<String>('images', value);

  double? get avgRating => getField<double>('avg_rating');
  set avgRating(double? value) => setField<double>('avg_rating', value);

  dynamic get openingHours => getField<dynamic>('opening_hours');
  set openingHours(dynamic value) => setField<dynamic>('opening_hours', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  int? get reviewCount => getField<int>('review_count');
  set reviewCount(int? value) => setField<int>('review_count', value);
}
