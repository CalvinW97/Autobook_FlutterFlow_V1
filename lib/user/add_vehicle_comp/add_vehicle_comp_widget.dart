import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_vehicle_comp_model.dart';
export 'add_vehicle_comp_model.dart';

/// Create a componentthat will be a bottom sheet where the user will enter
/// their car registration and click submit.
///
/// Then the submit text will show a loading circle until  the pop up is
/// replaced with another that asks the user to confirm the car details. make
/// model year, colour etc
class AddVehicleCompWidget extends StatefulWidget {
  const AddVehicleCompWidget({super.key});

  @override
  State<AddVehicleCompWidget> createState() => _AddVehicleCompWidgetState();
}

class _AddVehicleCompWidgetState extends State<AddVehicleCompWidget> {
  late AddVehicleCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddVehicleCompModel());

    _model.vehicleRegEntryTextController ??= TextEditingController();
    _model.vehicleRegEntryFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 275.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(32.0, 24.0, 32.0, 24.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Enter Car Registration',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Text(
                                  'Registration Number',
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
                              TextFormField(
                                controller:
                                    _model.vehicleRegEntryTextController,
                                focusNode: _model.vehicleRegEntryFocusNode,
                                autofocus: false,
                                textCapitalization:
                                    TextCapitalization.characters,
                                textInputAction: TextInputAction.done,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'e.g. ABC123',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
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
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
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
                                minLines: 1,
                                validator: _model
                                    .vehicleRegEntryTextControllerValidator
                                    .asValidator(context),
                                inputFormatters: [
                                  if (!isAndroid && !isiOS)
                                    TextInputFormatter.withFunction(
                                        (oldValue, newValue) {
                                      return TextEditingValue(
                                        selection: newValue.selection,
                                        text: newValue.text.toCapitalization(
                                            TextCapitalization.characters),
                                      );
                                    }),
                                ],
                              ),
                            ],
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              var _shouldSetState = false;
                              _model.cleanReg = (String input) {
                                return input.replaceAll(' ', '').toUpperCase();
                              }(_model.vehicleRegEntryTextController.text);
                              _model.updatePage(() {});
                              // Submit Reg Number
                              FFAppState()
                                  .addToMyRegistration(_model.cleanReg!);
                              _model.updatePage(() {});
                              // Query_Vehicles_Supabase
                              _model.existingVehicle =
                                  await VehiclesTable().queryRows(
                                queryFn: (q) => q
                                    .eqOrNull(
                                      'reg_number',
                                      _model.cleanReg,
                                    )
                                    .eqOrNull(
                                      'owner_id',
                                      currentUserUid,
                                    ),
                              );
                              _shouldSetState = true;
                              if ((_model.existingVehicle != null &&
                                      (_model.existingVehicle)!.isNotEmpty) ==
                                  true) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Vehicle Is Already In Your Garage',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                                // Close Pop Up
                                Navigator.pop(context);
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                // Vehicle_Reg_API_Call
                                _model.vehicleMetaData =
                                    await VehicleRegCallCall.call(
                                  registration: _model.cleanReg,
                                );

                                _shouldSetState = true;
                              }

                              if (VehicleRegCallCall.carMake(
                                        (_model.vehicleMetaData?.jsonBody ??
                                            ''),
                                      ) !=
                                      null &&
                                  VehicleRegCallCall.carMake(
                                        (_model.vehicleMetaData?.jsonBody ??
                                            ''),
                                      ) !=
                                      '') {
                                // Update_Vehicles_Supabase
                                await VehiclesTable().insert({
                                  'owner_id': currentUserUid,
                                  'reg_number': _model.cleanReg,
                                  'make': valueOrDefault<String>(
                                    VehicleRegCallCall.carMake(
                                      (_model.vehicleMetaData?.jsonBody ?? ''),
                                    ),
                                    'CAR',
                                  ),
                                  'year_of_manufacture':
                                      VehicleRegCallCall.carYear(
                                    (_model.vehicleMetaData?.jsonBody ?? ''),
                                  ),
                                  'mot_due_date': VehicleRegCallCall.carMOT(
                                    (_model.vehicleMetaData?.jsonBody ?? ''),
                                  ),
                                  'tax_due_date': VehicleRegCallCall.carTax(
                                    (_model.vehicleMetaData?.jsonBody ?? ''),
                                  ),
                                  'colour': VehicleRegCallCall.carColour(
                                    (_model.vehicleMetaData?.jsonBody ?? ''),
                                  ),
                                  'fuel_type': VehicleRegCallCall.carFuel(
                                    (_model.vehicleMetaData?.jsonBody ?? ''),
                                  ),
                                });
                              } else {
                                // Print_Error
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Vehicle Not Found',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }

                              // Close Pop Up
                              Navigator.pop(context);
                              if (_shouldSetState) safeSetState(() {});
                            },
                            text: 'Submit',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 50.0,
                              padding: EdgeInsets.all(8.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ].divide(SizedBox(height: 20.0)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
