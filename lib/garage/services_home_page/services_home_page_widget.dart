import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/garage/service_card/service_card_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services_home_page_model.dart';
export 'services_home_page_model.dart';

class ServicesHomePageWidget extends StatefulWidget {
  const ServicesHomePageWidget({super.key});

  static String routeName = 'ServicesHomePage';
  static String routePath = '/servicesHomePage';

  @override
  State<ServicesHomePageWidget> createState() => _ServicesHomePageWidgetState();
}

class _ServicesHomePageWidgetState extends State<ServicesHomePageWidget> {
  late ServicesHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicesHomePageModel());
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                context.pushNamed(BusinessHomeWidget.routeName);
                              },
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 24.0,
                              buttonSize: 35.0,
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              icon: Icon(
                                Icons.add,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                context.pushNamed(
                                  CreateServicePageWidget.routeName,
                                  queryParameters: {
                                    'serviceDataIn': serializeParam(
                                      functions.getDefaultMOT(),
                                      ParamType.DataStruct,
                                    ),
                                  }.withoutNulls,
                                );

                                FFAppState().clearServicesListCache();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 100.0),
                    child: FutureBuilder<List<ServicesRow>>(
                      future: FFAppState().servicesList(
                        overrideCache: true,
                        requestFn: () => ServicesTable().queryRows(
                          queryFn: (q) => q.eqOrNull(
                            'garage_id',
                            FFAppState().ProfileData.garageID,
                          ),
                        ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<ServicesRow> listViewServicesRowList =
                            snapshot.data!;

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewServicesRowList.length,
                          separatorBuilder: (_, __) => SizedBox(height: 10.0),
                          itemBuilder: (context, listViewIndex) {
                            final listViewServicesRow =
                                listViewServicesRowList[listViewIndex];
                            return ServiceCardWidget(
                              key: Key(
                                  'Keyeu3_${listViewIndex}_of_${listViewServicesRowList.length}'),
                              servicesList: listViewServicesRow,
                            );
                          },
                        );
                      },
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
