import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'admin_features_empty_list_model.dart';
export 'admin_features_empty_list_model.dart';

class AdminFeaturesEmptyListWidget extends StatefulWidget {
  const AdminFeaturesEmptyListWidget({super.key});

  @override
  State<AdminFeaturesEmptyListWidget> createState() =>
      _AdminFeaturesEmptyListWidgetState();
}

class _AdminFeaturesEmptyListWidgetState
    extends State<AdminFeaturesEmptyListWidget> {
  late AdminFeaturesEmptyListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminFeaturesEmptyListModel());

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
      width: 200.0,
      height: 200.0,
      decoration: const BoxDecoration(),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Text(
          FFLocalizations.of(context).getText(
            '8yy8b7ix' /* No prices */,
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
