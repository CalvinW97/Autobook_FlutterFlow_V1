import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'business_onboard_widget.dart' show BusinessOnboardWidget;
import 'package:flutter/material.dart';

class BusinessOnboardModel extends FlutterFlowModel<BusinessOnboardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CompanyName_TextField widget.
  FocusNode? companyNameTextFieldFocusNode;
  TextEditingController? companyNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      companyNameTextFieldTextControllerValidator;
  // State field(s) for CompanyReg_TextField widget.
  FocusNode? companyRegTextFieldFocusNode;
  TextEditingController? companyRegTextFieldTextController;
  String? Function(BuildContext, String?)?
      companyRegTextFieldTextControllerValidator;
  // State field(s) for Address1_TextField widget.
  FocusNode? address1TextFieldFocusNode;
  TextEditingController? address1TextFieldTextController;
  String? Function(BuildContext, String?)?
      address1TextFieldTextControllerValidator;
  // State field(s) for Address2_TextField widget.
  FocusNode? address2TextFieldFocusNode;
  TextEditingController? address2TextFieldTextController;
  String? Function(BuildContext, String?)?
      address2TextFieldTextControllerValidator;
  // State field(s) for City_TextField widget.
  FocusNode? cityTextFieldFocusNode;
  TextEditingController? cityTextFieldTextController;
  String? Function(BuildContext, String?)? cityTextFieldTextControllerValidator;
  // State field(s) for Postcode_TextField widget.
  FocusNode? postcodeTextFieldFocusNode;
  TextEditingController? postcodeTextFieldTextController;
  String? Function(BuildContext, String?)?
      postcodeTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  GaragesRow? newGarage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    companyNameTextFieldFocusNode?.dispose();
    companyNameTextFieldTextController?.dispose();

    companyRegTextFieldFocusNode?.dispose();
    companyRegTextFieldTextController?.dispose();

    address1TextFieldFocusNode?.dispose();
    address1TextFieldTextController?.dispose();

    address2TextFieldFocusNode?.dispose();
    address2TextFieldTextController?.dispose();

    cityTextFieldFocusNode?.dispose();
    cityTextFieldTextController?.dispose();

    postcodeTextFieldFocusNode?.dispose();
    postcodeTextFieldTextController?.dispose();
  }
}
