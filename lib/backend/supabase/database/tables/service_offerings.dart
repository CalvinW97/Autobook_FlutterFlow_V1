import '../database.dart';

class ServiceOfferingsTable extends SupabaseTable<ServiceOfferingsRow> {
  @override
  String get tableName => 'service_offerings';

  @override
  ServiceOfferingsRow createRow(Map<String, dynamic> data) =>
      ServiceOfferingsRow(data);
}

class ServiceOfferingsRow extends SupabaseDataRow {
  ServiceOfferingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceOfferingsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get whatsIncluded => getField<String>('whats_included');
  set whatsIncluded(String? value) => setField<String>('whats_included', value);

  String? get garageId => getField<String>('garage_id');
  set garageId(String? value) => setField<String>('garage_id', value);

  String? get serviceName => getField<String>('service_name');
  set serviceName(String? value) => setField<String>('service_name', value);

  bool? get isInstantBooking => getField<bool>('is_instant_booking');
  set isInstantBooking(bool? value) =>
      setField<bool>('is_instant_booking', value);

  String? get templateId => getField<String>('template_id');
  set templateId(String? value) => setField<String>('template_id', value);

  int? get durationMintues => getField<int>('duration_mintues');
  set durationMintues(int? value) => setField<int>('duration_mintues', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  bool? get canBeAddon => getField<bool>('can_be_addon');
  set canBeAddon(bool? value) => setField<bool>('can_be_addon', value);

  String? get pricingType => getField<String>('pricing_type');
  set pricingType(String? value) => setField<String>('pricing_type', value);

  double? get addOnDiscount => getField<double>('add_on_discount');
  set addOnDiscount(double? value) =>
      setField<double>('add_on_discount', value);

  String? get addOnDiscountType => getField<String>('add_on_discount_type');
  set addOnDiscountType(String? value) =>
      setField<String>('add_on_discount_type', value);

  double? get basePrice => getField<double>('base_price');
  set basePrice(double? value) => setField<double>('base_price', value);

  String? get adjustedPrice => getField<String>('adjusted_price');
  set adjustedPrice(String? value) => setField<String>('adjusted_price', value);
}
