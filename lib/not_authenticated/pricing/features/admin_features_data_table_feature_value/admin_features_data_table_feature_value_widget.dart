import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'admin_features_data_table_feature_value_model.dart';
export 'admin_features_data_table_feature_value_model.dart';

class AdminFeaturesDataTableFeatureValueWidget extends StatefulWidget {
  const AdminFeaturesDataTableFeatureValueWidget({
    super.key,
    this.initialValue,
  });

  final String? initialValue;

  @override
  State<AdminFeaturesDataTableFeatureValueWidget> createState() =>
      _AdminFeaturesDataTableFeatureValueWidgetState();
}

class _AdminFeaturesDataTableFeatureValueWidgetState
    extends State<AdminFeaturesDataTableFeatureValueWidget> {
  late AdminFeaturesDataTableFeatureValueModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AdminFeaturesDataTableFeatureValueModel());

    _model.textController ??= TextEditingController(text: widget.initialValue);
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: TextFormField(
        controller: _model.textController,
        focusNode: _model.textFieldFocusNode,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.textController',
          const Duration(milliseconds: 2000),
          () => safeSetState(() {}),
        ),
        autofocus: false,
        obscureText: false,
        decoration: InputDecoration(
          isDense: true,
          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Inter',
                color: FlutterFlowTheme.of(context).secondary,
                letterSpacing: 0.0,
                lineHeight: 2.0,
              ),
          hintText: FFLocalizations.of(context).getText(
            'v1b68z1n' /* TextField */,
          ),
          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Inter',
                color: FlutterFlowTheme.of(context).hintTextBorder,
                letterSpacing: 0.0,
              ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).hintTextBorder,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primary,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          filled: true,
          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
          hoverColor: FlutterFlowTheme.of(context).hoverBackground,
          suffixIcon: _model.textController!.text.isNotEmpty
              ? InkWell(
                  onTap: () async {
                    _model.textController?.clear();
                    safeSetState(() {});
                  },
                  child: Icon(
                    Icons.clear,
                    color: FlutterFlowTheme.of(context).navigationIcon,
                    size: 22,
                  ),
                )
              : null,
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Inter',
              letterSpacing: 0.0,
              lineHeight: 2.0,
            ),
        cursorColor: FlutterFlowTheme.of(context).primaryText,
        validator: _model.textControllerValidator.asValidator(context),
      ),
    );
  }
}
