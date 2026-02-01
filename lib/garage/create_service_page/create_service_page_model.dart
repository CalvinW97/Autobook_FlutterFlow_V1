import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/garage/service_template/service_template_widget.dart';
import '/index.dart';
import 'create_service_page_widget.dart' show CreateServicePageWidget;
import 'package:flutter/material.dart';

class CreateServicePageModel extends FlutterFlowModel<CreateServicePageWidget> {
  ///  Local state fields for this page.

  String? selectedServiceType;

  List<ServiceDataStructStruct> currentTier = [];
  void addToCurrentTier(ServiceDataStructStruct item) => currentTier.add(item);
  void removeFromCurrentTier(ServiceDataStructStruct item) =>
      currentTier.remove(item);
  void removeAtIndexFromCurrentTier(int index) => currentTier.removeAt(index);
  void insertAtIndexInCurrentTier(int index, ServiceDataStructStruct item) =>
      currentTier.insert(index, item);
  void updateCurrentTierAtIndex(
          int index, Function(ServiceDataStructStruct) updateFn) =>
      currentTier[index] = updateFn(currentTier[index]);

  int? activeTierIndex;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in CreateServicePage widget.
  List<ProfilesRow>? userRow;
  // Stores action output result for [Backend Call - Update Row(s)] action in IconButton widget.
  List<ServicesRow>? rowUpdated;
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  ServicesRow? rowInserted;
  // Model for Service_Template component.
  late ServiceTemplateModel serviceTemplateModel;

  @override
  void initState(BuildContext context) {
    serviceTemplateModel = createModel(context, () => ServiceTemplateModel());
  }

  @override
  void dispose() {
    serviceTemplateModel.dispose();
  }
}
