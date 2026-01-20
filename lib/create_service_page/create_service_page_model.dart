import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_service_page_widget.dart' show CreateServicePageWidget;
import 'package:flutter/material.dart';

class CreateServicePageModel extends FlutterFlowModel<CreateServicePageWidget> {
  ///  Local state fields for this page.

  String? selectedServiceType;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TemplateDropdown widget.
  String? templateDropdownValue;
  FormFieldController<String>? templateDropdownValueController;
  // State field(s) for ServiceName widget.
  FocusNode? serviceNameFocusNode;
  TextEditingController? serviceNameTextController;
  String? Function(BuildContext, String?)? serviceNameTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    serviceNameFocusNode?.dispose();
    serviceNameTextController?.dispose();
  }
}
