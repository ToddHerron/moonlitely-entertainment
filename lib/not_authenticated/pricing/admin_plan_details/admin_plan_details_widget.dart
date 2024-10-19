import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'admin_plan_details_model.dart';
export 'admin_plan_details_model.dart';

class AdminPlanDetailsWidget extends StatefulWidget {
  const AdminPlanDetailsWidget({
    super.key,
    required this.languageCode,
    required this.planIndex,
  });

  final String? languageCode;
  final int? planIndex;

  @override
  State<AdminPlanDetailsWidget> createState() => _AdminPlanDetailsWidgetState();
}

class _AdminPlanDetailsWidgetState extends State<AdminPlanDetailsWidget> {
  late AdminPlanDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPlanDetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'cntsfg9p' /* Pricing */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).info,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '2r60h1hx' /* Features */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).info,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
              ].divide(const SizedBox(width: 24.0)),
            ),
          ),
        ].divide(const SizedBox(height: 32.0)),
      ),
    );
  }
}
