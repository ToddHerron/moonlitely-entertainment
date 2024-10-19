import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'admin_plan_header_model.dart';
export 'admin_plan_header_model.dart';

class AdminPlanHeaderWidget extends StatefulWidget {
  const AdminPlanHeaderWidget({
    super.key,
    required this.languageCode,
    required this.planIndex,
  });

  final String? languageCode;
  final int? planIndex;

  @override
  State<AdminPlanHeaderWidget> createState() => _AdminPlanHeaderWidgetState();
}

class _AdminPlanHeaderWidgetState extends State<AdminPlanHeaderWidget> {
  late AdminPlanHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPlanHeaderModel());

    _model.textController1 ??= TextEditingController(
        text: valueOrDefault<String>(
      _model.textController2.text,
      '-- Default Plan ID -- ',
    ));
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController(
        text: valueOrDefault<String>(
      FFAppState()
                      .AdminPricingPlans[widget.planIndex!]
                      .planNames
                      .where((e) => e.languageCode == widget.languageCode)
                      .toList()
                      .first
                      .planName !=
                  ''
          ? FFAppState()
              .AdminPricingPlans[widget.planIndex!]
              .planNames
              .where((e) => e.languageCode == widget.languageCode)
              .toList()
              .first
              .planName
          : '',
      '-- Default Plan Name',
    ));
    _model.textFieldFocusNode2 ??= FocusNode();

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

    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'l4iqzr9l' /* planId */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Flexible(
                      child: Form(
                        key: _model.formKey1,
                        autovalidateMode: AutovalidateMode.always,
                        child: SizedBox(
                          width: 200.0,
                          child: TextFormField(
                            controller: _model.textController1,
                            focusNode: _model.textFieldFocusNode1,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textController1',
                              const Duration(milliseconds: 2000),
                              () async {
                                logFirebaseEvent(
                                    'ADMIN_PLAN_HEADER_TextField_n7ulphqv_ON_');
                                // STATE: Update planId
                                logFirebaseEvent('TextField_STATEUpdateplanId');
                                FFAppState().updateAdminPricingPlansAtIndex(
                                  widget.planIndex!,
                                  (e) =>
                                      e..planId = _model.textController1.text,
                                );
                                safeSetState(() {});
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    letterSpacing: 0.0,
                                    lineHeight: 2.0,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'hn5pr60q' /* TextField */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .hintTextBorder,
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .hintTextBorder,
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
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              hoverColor:
                                  FlutterFlowTheme.of(context).hoverBackground,
                              suffixIcon:
                                  _model.textController1!.text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            _model.textController1?.clear();
                                            logFirebaseEvent(
                                                'ADMIN_PLAN_HEADER_TextField_n7ulphqv_ON_');
                                            // STATE: Update planId
                                            logFirebaseEvent(
                                                'TextField_STATEUpdateplanId');
                                            FFAppState()
                                                .updateAdminPricingPlansAtIndex(
                                              widget.planIndex!,
                                              (e) => e
                                                ..planId =
                                                    _model.textController1.text,
                                            );
                                            safeSetState(() {});
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: FlutterFlowTheme.of(context)
                                                .navigationIcon,
                                            size: 22,
                                          ),
                                        )
                                      : null,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                  lineHeight: 2.0,
                                ),
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.textController1Validator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: badges.Badge(
                          badgeContent: Text(
                            FFLocalizations.of(context).getText(
                              'twr201or' /* 1 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          showBadge: FFAppState()
                                      .AdminPricingPlans[widget.planIndex!]
                                      .planId ==
                                  '',
                          shape: badges.BadgeShape.circle,
                          badgeColor: FlutterFlowTheme.of(context).error,
                          elevation: 4.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          position: badges.BadgePosition.topStart(),
                          animationType: badges.BadgeAnimationType.scale,
                          toAnimate: true,
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'mwuwnkvl' /* planName */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Expanded(
                      child: Form(
                        key: _model.formKey2,
                        autovalidateMode: AutovalidateMode.always,
                        child: SizedBox(
                          width: 200.0,
                          child: TextFormField(
                            controller: _model.textController2,
                            focusNode: _model.textFieldFocusNode2,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textController2',
                              const Duration(milliseconds: 2000),
                              () => safeSetState(() {}),
                            ),
                            onFieldSubmitted: (_) async {
                              logFirebaseEvent(
                                  'ADMIN_PLAN_HEADER_TextField_cebdwhaw_ON_');
                              logFirebaseEvent('TextField_update_app_state');
                              FFAppState().updateAdminPricingPlansAtIndex(
                                widget.planIndex!,
                                (e) => e
                                  ..planNames = functions
                                      .updatePlanNamesList(
                                          PlanNameStruct(
                                            languageCode: widget.languageCode,
                                            planName:
                                                _model.textController2.text,
                                          ),
                                          FFAppState()
                                              .AdminPricingPlans[
                                                  widget.planIndex!]
                                              .planNames
                                              .toList())!
                                      .toList(),
                              );
                              safeSetState(() {});
                            },
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    letterSpacing: 0.0,
                                    lineHeight: 2.0,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'q4ke88tw' /* TextField */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .hintTextBorder,
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .hintTextBorder,
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
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              hoverColor:
                                  FlutterFlowTheme.of(context).hoverBackground,
                              suffixIcon:
                                  _model.textController2!.text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            _model.textController2?.clear();
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: FlutterFlowTheme.of(context)
                                                .navigationIcon,
                                            size: 22,
                                          ),
                                        )
                                      : null,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                  lineHeight: 2.0,
                                ),
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.textController2Validator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: badges.Badge(
                        badgeContent: Text(
                          (FFAppConstants.supportedLanguagesCodes
                                      .toList()
                                      .length -
                                  FFAppState()
                                      .AdminPricingPlans[widget.planIndex!]
                                      .planNames
                                      .length)
                              .toString(),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        showBadge: (FFAppConstants.supportedLanguagesCodes
                                        .toList()
                                        .length -
                                    FFAppState()
                                        .AdminPricingPlans[widget.planIndex!]
                                        .planNames
                                        .length)
                                .toString() !=
                            '0',
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).error,
                        elevation: 4.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topStart(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                      ),
                    ),
                  ].divide(const SizedBox(width: 16.0)),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('ADMIN_PLAN_HEADER_DELETE_PLAN_BTN_ON_TAP');
                  // Confirm plan delete
                  logFirebaseEvent('Button_Confirmplandelete');
                  var confirmDialogResponse = await showDialog<bool>(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('Delete Plan'),
                            content: Text(
                                'Confirm deletion of plan ${FFAppState().AdminPricingPlans[widget.planIndex!].planNames.where((e) => e.languageCode == 'en').toList().first.planName}'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext, false),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext, true),
                                child: const Text('Delete'),
                              ),
                            ],
                          );
                        },
                      ) ??
                      false;
                  if (confirmDialogResponse) {
                    logFirebaseEvent('Button_update_app_state');
                    FFAppState()
                        .removeAtIndexFromAdminPricingPlans(widget.planIndex!);
                    safeSetState(() {});
                    logFirebaseEvent('Button_show_snack_bar');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Plan deleted',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                        duration: const Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).success,
                      ),
                    );
                  }
                  logFirebaseEvent('Button_close_dialog_drawer_etc');
                  Navigator.pop(context);
                },
                text: FFLocalizations.of(context).getText(
                  'qdromx0r' /* Delete Plan */,
                ),
                icon: const Icon(
                  Icons.delete,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).error,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                  hoverColor: FlutterFlowTheme.of(context).errorBackground,
                  hoverBorderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 1.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Container(
                  decoration: const BoxDecoration(),
                ),
              ),
            ].divide(const SizedBox(width: 24.0)),
          ),
        ].divide(const SizedBox(height: 32.0)),
      ),
    );
  }
}
