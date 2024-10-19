import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'admin_prices_empty_list_model.dart';
export 'admin_prices_empty_list_model.dart';

class AdminPricesEmptyListWidget extends StatefulWidget {
  const AdminPricesEmptyListWidget({super.key});

  @override
  State<AdminPricesEmptyListWidget> createState() =>
      _AdminPricesEmptyListWidgetState();
}

class _AdminPricesEmptyListWidgetState
    extends State<AdminPricesEmptyListWidget> {
  late AdminPricesEmptyListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPricesEmptyListModel());

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
            'qe4fb7dv' /* No prices */,
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
