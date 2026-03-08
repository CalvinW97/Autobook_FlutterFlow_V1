import '/flutter_flow/flutter_flow_util.dart';
import 'price_adjustment_row_widget.dart' show PriceAdjustmentRowWidget;
import 'package:flutter/material.dart';

class PriceAdjustmentRowModel
    extends FlutterFlowModel<PriceAdjustmentRowWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for priceField widget.
  FocusNode? priceFieldFocusNode;
  TextEditingController? priceFieldTextController;
  String? Function(BuildContext, String?)? priceFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    priceFieldFocusNode?.dispose();
    priceFieldTextController?.dispose();
  }
}
