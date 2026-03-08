import '/backend/supabase/supabase.dart';
import '/components/price_adjustment_row_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_price_adjustment_page_model.dart';
export 'edit_price_adjustment_page_model.dart';

class EditPriceAdjustmentPageWidget extends StatefulWidget {
  const EditPriceAdjustmentPageWidget({super.key});

  static String routeName = 'EditPriceAdjustmentPage';
  static String routePath = '/editPriceAdjustmentPage';

  @override
  State<EditPriceAdjustmentPageWidget> createState() =>
      _EditPriceAdjustmentPageWidgetState();
}

class _EditPriceAdjustmentPageWidgetState
    extends State<EditPriceAdjustmentPageWidget> {
  late EditPriceAdjustmentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditPriceAdjustmentPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.priceAdjustmentDefaults =
          await PriceAdjustmentSeedTable().queryRows(
        queryFn: (q) => q,
      );
      await Future.wait([
        Future(() async {
          _model.fuelTypeList = _model.priceAdjustmentDefaults!
              .where((e) => e.category == 'FUEL')
              .toList()
              .map((e) => e.label)
              .toList()
              .toList()
              .cast<String>();
          _model.fuelPriceList = _model.priceAdjustmentDefaults!
              .where((e) => e.category == 'FUEL')
              .toList()
              .map((e) => e.price)
              .withoutNulls
              .toList()
              .toList()
              .cast<double>();
          safeSetState(() {});
        }),
        Future(() async {
          _model.sizeTypeList = _model.priceAdjustmentDefaults!
              .where((e) => e.category == 'SIZE')
              .toList()
              .map((e) => e.label)
              .toList()
              .toList()
              .cast<String>();
          _model.sizePriceList = _model.priceAdjustmentDefaults!
              .where((e) => e.category == 'SIZE')
              .toList()
              .map((e) => e.price)
              .withoutNulls
              .toList()
              .toList()
              .cast<double>();
          safeSetState(() {});
        }),
        Future(() async {
          _model.engineTypeList = _model.priceAdjustmentDefaults!
              .where((e) => e.category == 'ENGINE')
              .toList()
              .map((e) => e.label)
              .toList()
              .toList()
              .cast<String>();
          _model.enginePriceList = _model.priceAdjustmentDefaults!
              .where((e) => e.category == 'ENGINE')
              .toList()
              .map((e) => e.price)
              .withoutNulls
              .toList()
              .toList()
              .cast<double>();
          safeSetState(() {});
        }),
      ]);
    });

    _model.adjustmentNameFieldTextController ??= TextEditingController();
    _model.adjustmentNameFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
            title: Text(
              'Adjusted Pricing',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 20.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.delete_outline,
                        color: FlutterFlowTheme.of(context).error,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        _model.rowInsertion =
                            await ServicePriceAdjustmentTable().insert({
                          'garage_id': FFAppState().ProfileData.garageID,
                          'adjustment_name':
                              _model.adjustmentNameFieldTextController.text,
                        });
                        if (_model.rowInsertion != null) {
                          context.pushNamed(ServicesHomePageWidget.routeName);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Unable to save service offering',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }

                        safeSetState(() {});
                      },
                      text: 'Save',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ),
            ],
            centerTitle: false,
            elevation: 1.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Specify the pricing adjustments based upon the vehicle specifications.\n',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0x8A000000),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: 200.0,
                            child: TextFormField(
                              controller:
                                  _model.adjustmentNameFieldTextController,
                              focusNode: _model.adjustmentNameFieldFocusNode,
                              autofocus: false,
                              enabled: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                hintText: 'TextField',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              enableInteractiveSelection: true,
                              validator: _model
                                  .adjustmentNameFieldTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Fuel Type',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Specify pricing adjustment of service based upon the vehicle fuel type.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Builder(
                                builder: (context) {
                                  final fuelAdjustmentList = _model
                                          .priceAdjustmentDefaults
                                          ?.where((e) => e.category == 'FUEL')
                                          .toList()
                                          .toList() ??
                                      [];

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: fuelAdjustmentList.length,
                                    itemBuilder:
                                        (context, fuelAdjustmentListIndex) {
                                      final fuelAdjustmentListItem =
                                          fuelAdjustmentList[
                                              fuelAdjustmentListIndex];
                                      return wrapWithModel(
                                        model: _model.priceAdjustmentRowModels1
                                            .getModel(
                                          fuelAdjustmentListIndex.toString(),
                                          fuelAdjustmentListIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PriceAdjustmentRowWidget(
                                          key: Key(
                                            'Keyvs5_${fuelAdjustmentListIndex.toString()}',
                                          ),
                                          rowLabel:
                                              fuelAdjustmentListItem.label,
                                          rowValue:
                                              fuelAdjustmentListItem.price!,
                                          onValueChange: (newValue) async {
                                            _model.updateFuelPriceListAtIndex(
                                              fuelAdjustmentListIndex,
                                              (_) => newValue,
                                            );
                                            safeSetState(() {});
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ]
                                .divide(SizedBox(height: 10.0))
                                .addToEnd(SizedBox(height: 0.0)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Vehicle Size',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Specify pircing adjustment of service based upon the vehicle engine size.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Builder(
                                builder: (context) {
                                  final sizeAdjustmentList = _model
                                          .priceAdjustmentDefaults
                                          ?.where((e) => e.category == 'SIZE')
                                          .toList()
                                          .toList() ??
                                      [];

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: sizeAdjustmentList.length,
                                    itemBuilder:
                                        (context, sizeAdjustmentListIndex) {
                                      final sizeAdjustmentListItem =
                                          sizeAdjustmentList[
                                              sizeAdjustmentListIndex];
                                      return wrapWithModel(
                                        model: _model.priceAdjustmentRowModels2
                                            .getModel(
                                          sizeAdjustmentListIndex.toString(),
                                          sizeAdjustmentListIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PriceAdjustmentRowWidget(
                                          key: Key(
                                            'Keyqgr_${sizeAdjustmentListIndex.toString()}',
                                          ),
                                          rowLabel:
                                              sizeAdjustmentListItem.label,
                                          rowValue:
                                              sizeAdjustmentListItem.price!,
                                          onValueChange: (newValue) async {
                                            _model.updateSizePriceListAtIndex(
                                              sizeAdjustmentListIndex,
                                              (_) => newValue,
                                            );
                                            safeSetState(() {});
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ]
                                .divide(SizedBox(height: 10.0))
                                .addToEnd(SizedBox(height: 0.0)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Engine Size',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Specify pircing adjustment of service based upon the vehicle engine size.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Builder(
                                builder: (context) {
                                  final engineAdjustmentList = _model
                                          .priceAdjustmentDefaults
                                          ?.where((e) => e.category == 'ENGINE')
                                          .toList()
                                          .toList() ??
                                      [];

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: engineAdjustmentList.length,
                                    itemBuilder:
                                        (context, engineAdjustmentListIndex) {
                                      final engineAdjustmentListItem =
                                          engineAdjustmentList[
                                              engineAdjustmentListIndex];
                                      return wrapWithModel(
                                        model: _model.priceAdjustmentRowModels3
                                            .getModel(
                                          engineAdjustmentListIndex.toString(),
                                          engineAdjustmentListIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PriceAdjustmentRowWidget(
                                          key: Key(
                                            'Keyu00_${engineAdjustmentListIndex.toString()}',
                                          ),
                                          rowLabel:
                                              engineAdjustmentListItem.label,
                                          rowValue:
                                              engineAdjustmentListItem.price!,
                                          onValueChange: (newValue) async {
                                            _model.updateEnginePriceListAtIndex(
                                              engineAdjustmentListIndex,
                                              (_) => newValue,
                                            );
                                            safeSetState(() {});
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ]
                                .divide(SizedBox(height: 10.0))
                                .addToEnd(SizedBox(height: 0.0)),
                          ),
                        ),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToStart(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
