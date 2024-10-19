import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'admin_prices_data_table_billing_cycle_model.dart';
export 'admin_prices_data_table_billing_cycle_model.dart';

class AdminPricesDataTableBillingCycleWidget extends StatefulWidget {
  const AdminPricesDataTableBillingCycleWidget({
    super.key,
    String? initialOption,
  }) : initialOption = initialOption ?? 'monthly';

  final String initialOption;

  @override
  State<AdminPricesDataTableBillingCycleWidget> createState() =>
      _AdminPricesDataTableBillingCycleWidgetState();
}

class _AdminPricesDataTableBillingCycleWidgetState
    extends State<AdminPricesDataTableBillingCycleWidget> {
  late AdminPricesDataTableBillingCycleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AdminPricesDataTableBillingCycleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowDropDown<String>(
      controller: _model.dropDownBillingCycleValueController ??=
          FormFieldController<String>(
        _model.dropDownBillingCycleValue ??= widget.initialOption,
      ),
      options: [
        FFLocalizations.of(context).getText(
          '3kihqyxr' /* monthly */,
        ),
        FFLocalizations.of(context).getText(
          '222imcid' /* annually */,
        )
      ],
      onChanged: (val) =>
          safeSetState(() => _model.dropDownBillingCycleValue = val),
      width: 200.0,
      height: 40.0,
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter',
            letterSpacing: 0.0,
          ),
      hintText: FFLocalizations.of(context).getText(
        'hflm71iu' /* Select ... */,
      ),
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: FlutterFlowTheme.of(context).secondaryText,
        size: 24.0,
      ),
      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 2.0,
      borderColor: Colors.transparent,
      borderWidth: 0.0,
      borderRadius: 8.0,
      margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
      hidesUnderline: true,
      isOverButton: false,
      isSearchable: false,
      isMultiSelect: false,
    );
  }
}
