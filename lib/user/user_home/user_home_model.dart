import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/user/car_card/car_card_widget.dart';
import '/user/user_nav_footer/user_nav_footer_widget.dart';
import '/index.dart';
import 'user_home_widget.dart' show UserHomeWidget;
import 'package:flutter/material.dart';

class UserHomeModel extends FlutterFlowModel<UserHomeWidget> {
  ///  Local state fields for this page.

  int? tabIndex = 0;

  /// List of returned garages and their services.
  ///
  /// Returned via API call
  List<ListingDataStruct> searchResults = [];
  void addToSearchResults(ListingDataStruct item) => searchResults.add(item);
  void removeFromSearchResults(ListingDataStruct item) =>
      searchResults.remove(item);
  void removeAtIndexFromSearchResults(int index) =>
      searchResults.removeAt(index);
  void insertAtIndexInSearchResults(int index, ListingDataStruct item) =>
      searchResults.insert(index, item);
  void updateSearchResultsAtIndex(
          int index, Function(ListingDataStruct) updateFn) =>
      searchResults[index] = updateFn(searchResults[index]);

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
  // Stores action output result for [Backend Call - Query Rows] action in search_Button widget.
  List<VehiclesRow>? returnedVehicle;
  // Stores action output result for [Backend Call - API (GarageLocationCall)] action in search_Button widget.
  ApiCallResponse? returnedGarages;
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
