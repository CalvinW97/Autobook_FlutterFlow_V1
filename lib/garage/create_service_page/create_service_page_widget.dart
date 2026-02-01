import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/delete_service_confirm_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/garage/service_template/service_template_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'create_service_page_model.dart';
export 'create_service_page_model.dart';

class CreateServicePageWidget extends StatefulWidget {
  const CreateServicePageWidget({
    super.key,
    required this.serviceDataIn,
  });

  final ServiceDataStructStruct? serviceDataIn;

  static String routeName = 'CreateServicePage';
  static String routePath = '/createServicePage';

  @override
  State<CreateServicePageWidget> createState() =>
      _CreateServicePageWidgetState();
}

class _CreateServicePageWidgetState extends State<CreateServicePageWidget> {
  late CreateServicePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateServicePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.addToCurrentTier(ServiceDataStructStruct(
        name: 'Full Service',
        isInstantBookable: true,
      ));
      safeSetState(() {});
      _model.userRow = await ProfilesTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id',
          currentUserUid,
        ),
      );
    });
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
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 24.0,
                              buttonSize: 35.0,
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              icon: Icon(
                                Icons.arrow_back,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                context.pushNamed(
                                    ServicesHomePageWidget.routeName);
                              },
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      200.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 24.0,
                                    buttonSize: 35.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    icon: Icon(
                                      Icons.delete,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 20.0,
                                    ),
                                    onPressed: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(dialogContext)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: DeleteServiceConfirmWidget(
                                                serviceDataIn:
                                                    widget.serviceDataIn!,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 24.0,
                              buttonSize: 35.0,
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              icon: Icon(
                                Icons.save,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                if (widget.serviceDataIn?.id != null &&
                                    widget.serviceDataIn?.id != '') {
                                  _model.rowUpdated =
                                      await ServicesTable().update(
                                    data: {
                                      'type': _model.serviceTemplateModel
                                          .templateDropdownValue,
                                      'name': _model
                                          .serviceTemplateModel
                                          .serviceNameTextFieldTextController
                                          .text,
                                      'price': double.tryParse(_model
                                          .serviceTemplateModel
                                          .priceTextFieldTextController
                                          .text),
                                      'is_instant_booking': _model
                                          .serviceTemplateModel
                                          .instantBookingCheckboxValue,
                                      'description': _model
                                          .serviceTemplateModel
                                          .descriptionTextFieldTextController
                                          .text,
                                    },
                                    matchingRows: (rows) => rows
                                        .eqOrNull(
                                          'id',
                                          widget.serviceDataIn?.id,
                                        )
                                        .eqOrNull(
                                          'garage_id',
                                          FFAppState().ProfileData.garageID,
                                        ),
                                    returnRows: true,
                                  );
                                  if (_model.rowUpdated?.firstOrNull?.id !=
                                          null &&
                                      _model.rowUpdated?.firstOrNull?.id !=
                                          '') {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Service updated successfully',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 2000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Failed to update service',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  }
                                } else {
                                  _model.rowInserted =
                                      await ServicesTable().insert({
                                    'garage_id':
                                        _model.userRow?.firstOrNull?.garageId,
                                    'type': _model.serviceTemplateModel
                                        .templateDropdownValue,
                                    'name': _model
                                        .serviceTemplateModel
                                        .serviceNameTextFieldTextController
                                        .text,
                                    'price': double.tryParse(_model
                                        .serviceTemplateModel
                                        .priceTextFieldTextController
                                        .text),
                                    'description': _model
                                        .serviceTemplateModel
                                        .descriptionTextFieldTextController
                                        .text,
                                    'is_instant_booking': _model
                                        .serviceTemplateModel
                                        .instantBookingCheckboxValue,
                                  });
                                  if (_model.rowInserted?.id != null &&
                                      _model.rowInserted?.id != '') {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Service successfully created',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 2000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Failed to create service',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  }
                                }

                                context.pushNamed(
                                    ServicesHomePageWidget.routeName);

                                safeSetState(() {});
                              },
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 20.0, 10.0, 20.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.serviceTemplateModel,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: ServiceTemplateWidget(
                              serviceData: ServiceDataStructStruct(
                                name: widget.serviceDataIn?.name,
                                priceSmall: widget.serviceDataIn?.priceSmall,
                                description: widget.serviceDataIn?.description,
                                type: widget.serviceDataIn?.type,
                                isInstantBookable:
                                    widget.serviceDataIn?.isInstantBookable,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
