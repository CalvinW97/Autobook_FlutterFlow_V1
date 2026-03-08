import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_service_page_widget.dart' show CreateServicePageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CreateServicePageModel extends FlutterFlowModel<CreateServicePageWidget> {
  ///  Local state fields for this page.

  String? selectedTemplate;

  String whatsIncludedText = '<What\'s included with this service>';

  /// Type of add on discount.
  ///
  /// either RELATIVE or ABSOLUTE
  String? addonType = 'ABSOLUTE';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Insert Row] action in save_Button widget.
  ServiceOfferingsRow? rowInsertion;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<ServiceTemplatesRow>? returnedTemplate;
  // State field(s) for basePrice_Field widget.
  FocusNode? basePriceFieldFocusNode;
  TextEditingController? basePriceFieldTextController;
  String? Function(BuildContext, String?)?
      basePriceFieldTextControllerValidator;
  // State field(s) for duration_Field widget.
  FocusNode? durationFieldFocusNode;
  TextEditingController? durationFieldTextController;
  String? Function(BuildContext, String?)? durationFieldTextControllerValidator;
  // State field(s) for isInstantBook_Field widget.
  bool? isInstantBookFieldValue;
  // State field(s) for addon_Field widget.
  FocusNode? addonFieldFocusNode;
  TextEditingController? addonFieldTextController;
  String? Function(BuildContext, String?)? addonFieldTextControllerValidator;
  // State field(s) for petrol_Field widget.
  FocusNode? petrolFieldFocusNode;
  TextEditingController? petrolFieldTextController;
  String? Function(BuildContext, String?)? petrolFieldTextControllerValidator;
  // State field(s) for diesel_Field widget.
  FocusNode? dieselFieldFocusNode;
  TextEditingController? dieselFieldTextController;
  String? Function(BuildContext, String?)? dieselFieldTextControllerValidator;
  // State field(s) for hybrid_Field widget.
  FocusNode? hybridFieldFocusNode;
  TextEditingController? hybridFieldTextController;
  String? Function(BuildContext, String?)? hybridFieldTextControllerValidator;
  // State field(s) for electric_Field widget.
  FocusNode? electricFieldFocusNode;
  TextEditingController? electricFieldTextController;
  String? Function(BuildContext, String?)? electricFieldTextControllerValidator;
  // State field(s) for small_Field widget.
  FocusNode? smallFieldFocusNode;
  TextEditingController? smallFieldTextController;
  String? Function(BuildContext, String?)? smallFieldTextControllerValidator;
  // State field(s) for medium_Field widget.
  FocusNode? mediumFieldFocusNode;
  TextEditingController? mediumFieldTextController;
  String? Function(BuildContext, String?)? mediumFieldTextControllerValidator;
  // State field(s) for large_Field widget.
  FocusNode? largeFieldFocusNode;
  TextEditingController? largeFieldTextController;
  String? Function(BuildContext, String?)? largeFieldTextControllerValidator;
  // State field(s) for cc_0_1400_Field widget.
  FocusNode? cc01400FieldFocusNode;
  TextEditingController? cc01400FieldTextController;
  String? Function(BuildContext, String?)? cc01400FieldTextControllerValidator;
  // State field(s) for cc_1401_2000_Field widget.
  FocusNode? cc14012000FieldFocusNode;
  TextEditingController? cc14012000FieldTextController;
  String? Function(BuildContext, String?)?
      cc14012000FieldTextControllerValidator;
  // State field(s) for cc_2001_3000_Field widget.
  FocusNode? cc20013000FieldFocusNode;
  TextEditingController? cc20013000FieldTextController;
  String? Function(BuildContext, String?)?
      cc20013000FieldTextControllerValidator;
  // State field(s) for cc_3001_plus_Field widget.
  FocusNode? cc3001PlusFieldFocusNode;
  TextEditingController? cc3001PlusFieldTextController;
  String? Function(BuildContext, String?)?
      cc3001PlusFieldTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    basePriceFieldFocusNode?.dispose();
    basePriceFieldTextController?.dispose();

    durationFieldFocusNode?.dispose();
    durationFieldTextController?.dispose();

    addonFieldFocusNode?.dispose();
    addonFieldTextController?.dispose();

    petrolFieldFocusNode?.dispose();
    petrolFieldTextController?.dispose();

    dieselFieldFocusNode?.dispose();
    dieselFieldTextController?.dispose();

    hybridFieldFocusNode?.dispose();
    hybridFieldTextController?.dispose();

    electricFieldFocusNode?.dispose();
    electricFieldTextController?.dispose();

    smallFieldFocusNode?.dispose();
    smallFieldTextController?.dispose();

    mediumFieldFocusNode?.dispose();
    mediumFieldTextController?.dispose();

    largeFieldFocusNode?.dispose();
    largeFieldTextController?.dispose();

    cc01400FieldFocusNode?.dispose();
    cc01400FieldTextController?.dispose();

    cc14012000FieldFocusNode?.dispose();
    cc14012000FieldTextController?.dispose();

    cc20013000FieldFocusNode?.dispose();
    cc20013000FieldTextController?.dispose();

    cc3001PlusFieldFocusNode?.dispose();
    cc3001PlusFieldTextController?.dispose();

    expandableExpandableController.dispose();
  }
}
