import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'service_template_widget.dart' show ServiceTemplateWidget;
import 'package:flutter/material.dart';

class ServiceTemplateModel extends FlutterFlowModel<ServiceTemplateWidget> {
  ///  Local state fields for this component.

  ServiceDataStructStruct? serviceStateStruct;
  void updateServiceStateStructStruct(
      Function(ServiceDataStructStruct) updateFn) {
    updateFn(serviceStateStruct ??= ServiceDataStructStruct());
  }

  String selectedServiceType = 'MOT';

  ///  State fields for stateful widgets in this component.

  // State field(s) for TemplateDropdown widget.
  String? templateDropdownValue;
  FormFieldController<String>? templateDropdownValueController;
  // State field(s) for ServiceName_TextField widget.
  FocusNode? serviceNameTextFieldFocusNode;
  TextEditingController? serviceNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      serviceNameTextFieldTextControllerValidator;
  // State field(s) for PriceTextField widget.
  FocusNode? priceTextFieldFocusNode;
  TextEditingController? priceTextFieldTextController;
  String? Function(BuildContext, String?)?
      priceTextFieldTextControllerValidator;
  // State field(s) for InstantBookingCheckbox widget.
  bool? instantBookingCheckboxValue;
  // State field(s) for DescriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    serviceNameTextFieldFocusNode?.dispose();
    serviceNameTextFieldTextController?.dispose();

    priceTextFieldFocusNode?.dispose();
    priceTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();
  }
}
