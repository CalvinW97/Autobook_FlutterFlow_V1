import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_vehicle_comp_widget.dart' show AddVehicleCompWidget;
import 'package:flutter/material.dart';

class AddVehicleCompModel extends FlutterFlowModel<AddVehicleCompWidget> {
  ///  Local state fields for this component.

  String? cleanReg;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Vehicle_Reg_Entry widget.
  FocusNode? vehicleRegEntryFocusNode;
  TextEditingController? vehicleRegEntryTextController;
  String? Function(BuildContext, String?)?
      vehicleRegEntryTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VehiclesRow>? existingVehicle;
  // Stores action output result for [Backend Call - API (VehicleRegCall)] action in Button widget.
  ApiCallResponse? vehicleMetaData;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    vehicleRegEntryFocusNode?.dispose();
    vehicleRegEntryTextController?.dispose();
  }
}
