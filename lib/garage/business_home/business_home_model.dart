import '/flutter_flow/flutter_flow_util.dart';
import '/garage/garage_nav_footer/garage_nav_footer_widget.dart';
import '/index.dart';
import 'business_home_widget.dart' show BusinessHomeWidget;
import 'package:flutter/material.dart';

class BusinessHomeModel extends FlutterFlowModel<BusinessHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Garage_Nav_Footer component.
  late GarageNavFooterModel garageNavFooterModel;

  @override
  void initState(BuildContext context) {
    garageNavFooterModel = createModel(context, () => GarageNavFooterModel());
  }

  @override
  void dispose() {
    garageNavFooterModel.dispose();
  }
}
