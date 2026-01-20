import '/components/car_card_widget.dart';
import '/components/user_nav_footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_home_widget.dart' show UserHomeWidget;
import 'package:flutter/material.dart';

class UserHomeModel extends FlutterFlowModel<UserHomeWidget> {
  ///  Local state fields for this page.

  int? tabIndex = 0;

  ///  State fields for stateful widgets in this page.

  // Models for CarCard dynamic component.
  late FlutterFlowDynamicModels<CarCardModel> carCardModels;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for User_Nav_Footer component.
  late UserNavFooterModel userNavFooterModel;

  @override
  void initState(BuildContext context) {
    carCardModels = FlutterFlowDynamicModels(() => CarCardModel());
    userNavFooterModel = createModel(context, () => UserNavFooterModel());
  }

  @override
  void dispose() {
    carCardModels.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    userNavFooterModel.dispose();
  }
}
