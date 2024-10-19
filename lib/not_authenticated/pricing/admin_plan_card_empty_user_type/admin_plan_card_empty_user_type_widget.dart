import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'admin_plan_card_empty_user_type_model.dart';
export 'admin_plan_card_empty_user_type_model.dart';

class AdminPlanCardEmptyUserTypeWidget extends StatefulWidget {
  const AdminPlanCardEmptyUserTypeWidget({super.key});

  @override
  State<AdminPlanCardEmptyUserTypeWidget> createState() =>
      _AdminPlanCardEmptyUserTypeWidgetState();
}

class _AdminPlanCardEmptyUserTypeWidgetState
    extends State<AdminPlanCardEmptyUserTypeWidget> {
  late AdminPlanCardEmptyUserTypeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPlanCardEmptyUserTypeModel());

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
            'gt0eiqsy' /* Select a user type */,
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
