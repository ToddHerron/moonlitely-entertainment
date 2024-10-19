import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'admin_prices_data_table_currency_model.dart';
export 'admin_prices_data_table_currency_model.dart';

class AdminPricesDataTableCurrencyWidget extends StatefulWidget {
  const AdminPricesDataTableCurrencyWidget({
    super.key,
    CurrencyCode? initialOption,
  }) : initialOption = initialOption ?? CurrencyCode.CAD;

  final CurrencyCode? initialOption;

  @override
  State<AdminPricesDataTableCurrencyWidget> createState() =>
      _AdminPricesDataTableCurrencyWidgetState();
}

class _AdminPricesDataTableCurrencyWidgetState
    extends State<AdminPricesDataTableCurrencyWidget> {
  late AdminPricesDataTableCurrencyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPricesDataTableCurrencyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FlutterFlowDropDown<String>(
      controller: _model.dropDownCurrencyCodeValueController ??=
          FormFieldController<String>(
        _model.dropDownCurrencyCodeValue ??= widget.initialOption?.name,
      ),
      options: functions.listOfCurrencyCodes(FFAppState().currencies.toList()),
      onChanged: (val) =>
          safeSetState(() => _model.dropDownCurrencyCodeValue = val),
      width: 200.0,
      height: 40.0,
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter',
            letterSpacing: 0.0,
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
