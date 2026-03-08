import '/backend/supabase/supabase.dart';
import '/components/price_adjustment_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_price_adjustment_page_widget.dart'
    show EditPriceAdjustmentPageWidget;
import 'package:flutter/material.dart';

class EditPriceAdjustmentPageModel
    extends FlutterFlowModel<EditPriceAdjustmentPageWidget> {
  ///  Local state fields for this page.

  List<String> fuelTypeList = [];
  void addToFuelTypeList(String item) => fuelTypeList.add(item);
  void removeFromFuelTypeList(String item) => fuelTypeList.remove(item);
  void removeAtIndexFromFuelTypeList(int index) => fuelTypeList.removeAt(index);
  void insertAtIndexInFuelTypeList(int index, String item) =>
      fuelTypeList.insert(index, item);
  void updateFuelTypeListAtIndex(int index, Function(String) updateFn) =>
      fuelTypeList[index] = updateFn(fuelTypeList[index]);

  List<double> fuelPriceList = [];
  void addToFuelPriceList(double item) => fuelPriceList.add(item);
  void removeFromFuelPriceList(double item) => fuelPriceList.remove(item);
  void removeAtIndexFromFuelPriceList(int index) =>
      fuelPriceList.removeAt(index);
  void insertAtIndexInFuelPriceList(int index, double item) =>
      fuelPriceList.insert(index, item);
  void updateFuelPriceListAtIndex(int index, Function(double) updateFn) =>
      fuelPriceList[index] = updateFn(fuelPriceList[index]);

  List<String> sizeTypeList = [];
  void addToSizeTypeList(String item) => sizeTypeList.add(item);
  void removeFromSizeTypeList(String item) => sizeTypeList.remove(item);
  void removeAtIndexFromSizeTypeList(int index) => sizeTypeList.removeAt(index);
  void insertAtIndexInSizeTypeList(int index, String item) =>
      sizeTypeList.insert(index, item);
  void updateSizeTypeListAtIndex(int index, Function(String) updateFn) =>
      sizeTypeList[index] = updateFn(sizeTypeList[index]);

  List<double> sizePriceList = [];
  void addToSizePriceList(double item) => sizePriceList.add(item);
  void removeFromSizePriceList(double item) => sizePriceList.remove(item);
  void removeAtIndexFromSizePriceList(int index) =>
      sizePriceList.removeAt(index);
  void insertAtIndexInSizePriceList(int index, double item) =>
      sizePriceList.insert(index, item);
  void updateSizePriceListAtIndex(int index, Function(double) updateFn) =>
      sizePriceList[index] = updateFn(sizePriceList[index]);

  List<String> engineTypeList = [];
  void addToEngineTypeList(String item) => engineTypeList.add(item);
  void removeFromEngineTypeList(String item) => engineTypeList.remove(item);
  void removeAtIndexFromEngineTypeList(int index) =>
      engineTypeList.removeAt(index);
  void insertAtIndexInEngineTypeList(int index, String item) =>
      engineTypeList.insert(index, item);
  void updateEngineTypeListAtIndex(int index, Function(String) updateFn) =>
      engineTypeList[index] = updateFn(engineTypeList[index]);

  List<double> enginePriceList = [];
  void addToEnginePriceList(double item) => enginePriceList.add(item);
  void removeFromEnginePriceList(double item) => enginePriceList.remove(item);
  void removeAtIndexFromEnginePriceList(int index) =>
      enginePriceList.removeAt(index);
  void insertAtIndexInEnginePriceList(int index, double item) =>
      enginePriceList.insert(index, item);
  void updateEnginePriceListAtIndex(int index, Function(double) updateFn) =>
      enginePriceList[index] = updateFn(enginePriceList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in EditPriceAdjustmentPage widget.
  List<PriceAdjustmentSeedRow>? priceAdjustmentDefaults;
  // Stores action output result for [Backend Call - Insert Row] action in save_Button widget.
  ServicePriceAdjustmentRow? rowInsertion;
  // State field(s) for adjustmentNameField widget.
  FocusNode? adjustmentNameFieldFocusNode;
  TextEditingController? adjustmentNameFieldTextController;
  String? Function(BuildContext, String?)?
      adjustmentNameFieldTextControllerValidator;
  // Models for priceAdjustmentRow dynamic component.
  late FlutterFlowDynamicModels<PriceAdjustmentRowModel>
      priceAdjustmentRowModels1;
  // Models for priceAdjustmentRow dynamic component.
  late FlutterFlowDynamicModels<PriceAdjustmentRowModel>
      priceAdjustmentRowModels2;
  // Models for priceAdjustmentRow dynamic component.
  late FlutterFlowDynamicModels<PriceAdjustmentRowModel>
      priceAdjustmentRowModels3;

  @override
  void initState(BuildContext context) {
    priceAdjustmentRowModels1 =
        FlutterFlowDynamicModels(() => PriceAdjustmentRowModel());
    priceAdjustmentRowModels2 =
        FlutterFlowDynamicModels(() => PriceAdjustmentRowModel());
    priceAdjustmentRowModels3 =
        FlutterFlowDynamicModels(() => PriceAdjustmentRowModel());
  }

  @override
  void dispose() {
    adjustmentNameFieldFocusNode?.dispose();
    adjustmentNameFieldTextController?.dispose();

    priceAdjustmentRowModels1.dispose();
    priceAdjustmentRowModels2.dispose();
    priceAdjustmentRowModels3.dispose();
  }
}
