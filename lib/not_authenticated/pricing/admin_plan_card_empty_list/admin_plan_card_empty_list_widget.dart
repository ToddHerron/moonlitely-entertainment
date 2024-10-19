import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'admin_plan_card_empty_list_model.dart';
export 'admin_plan_card_empty_list_model.dart';

class AdminPlanCardEmptyListWidget extends StatefulWidget {
  const AdminPlanCardEmptyListWidget({super.key});

  @override
  State<AdminPlanCardEmptyListWidget> createState() =>
      _AdminPlanCardEmptyListWidgetState();
}

class _AdminPlanCardEmptyListWidgetState
    extends State<AdminPlanCardEmptyListWidget> {
  late AdminPlanCardEmptyListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPlanCardEmptyListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Text(
          FFLocalizations.of(context).getText(
            '7kerw397' /* No plans */,
          ),
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Readex Pro',
                letterSpacing: 0.0,
              ),
        ),
      ),
    );
  }
}
