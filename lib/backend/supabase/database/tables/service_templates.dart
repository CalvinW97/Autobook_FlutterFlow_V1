import '../database.dart';

class ServiceTemplatesTable extends SupabaseTable<ServiceTemplatesRow> {
  @override
  String get tableName => 'service_templates';

  @override
  ServiceTemplatesRow createRow(Map<String, dynamic> data) =>
      ServiceTemplatesRow(data);
}

class ServiceTemplatesRow extends SupabaseDataRow {
  ServiceTemplatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceTemplatesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get whatsIncluded => getField<String>('whats_included');
  set whatsIncluded(String? value) => setField<String>('whats_included', value);

  String? get serviceId => getField<String>('service_id');
  set serviceId(String? value) => setField<String>('service_id', value);

  String? get serviceType => getField<String>('service_type');
  set serviceType(String? value) => setField<String>('service_type', value);

  String? get serviceName => getField<String>('service_name');
  set serviceName(String? value) => setField<String>('service_name', value);
}
