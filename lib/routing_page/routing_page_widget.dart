import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'routing_page_model.dart';
export 'routing_page_model.dart';

class RoutingPageWidget extends StatefulWidget {
  const RoutingPageWidget({super.key});

  static String routeName = 'routingPage';
  static String routePath = '/routingPage';

  @override
  State<RoutingPageWidget> createState() => _RoutingPageWidgetState();
}

class _RoutingPageWidgetState extends State<RoutingPageWidget> {
  late RoutingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoutingPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.syncUserSession(context);
      if (FFAppState().ProfileData.role == 'user') {
        context.pushNamed(UserHomeWidget.routeName);
      } else {
        context.pushNamed(BusinessHomeWidget.routeName);
      }
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
        body: SafeArea(
          top: true,
          child: Opacity(
            opacity: 0.0,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
