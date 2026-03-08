import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_onboard_widget.dart' show UserOnboardWidget;
import 'package:flutter/material.dart';

class UserOnboardModel extends FlutterFlowModel<UserOnboardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for FirstName_TextField widget.
  FocusNode? firstNameTextFieldFocusNode;
  TextEditingController? firstNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextControllerValidator;
  // State field(s) for LastName_TextField widget.
  FocusNode? lastNameTextFieldFocusNode;
  TextEditingController? lastNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      lastNameTextFieldTextControllerValidator;
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameTextFieldFocusNode?.dispose();
    firstNameTextFieldTextController?.dispose();

    lastNameTextFieldFocusNode?.dispose();
    lastNameTextFieldTextController?.dispose();

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
