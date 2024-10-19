import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/not_authenticated/pricing/features/admin_features_data_table_feature_id/admin_features_data_table_feature_id_widget.dart';
import '/not_authenticated/pricing/features/admin_features_data_table_feature_name/admin_features_data_table_feature_name_widget.dart';
import '/not_authenticated/pricing/features/admin_features_data_table_feature_value/admin_features_data_table_feature_value_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'admin_features_model.dart';
export 'admin_features_model.dart';

class AdminFeaturesWidget extends StatefulWidget {
  const AdminFeaturesWidget({
    super.key,
    required this.languageCode,
    this.featureList,
  });

  final String? languageCode;
  final List<FeatureStruct>? featureList;

  @override
  State<AdminFeaturesWidget> createState() => _AdminFeaturesWidgetState();
}

class _AdminFeaturesWidgetState extends State<AdminFeaturesWidget> {
  late AdminFeaturesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminFeaturesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADMIN_FEATURES_Admin_Features_ON_INIT_ST');
      logFirebaseEvent('Admin_Features_update_component_state');
      _model.features = widget.featureList!.toList().cast<FeatureStruct>();
      safeSetState(() {});
    });

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
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            FFLocalizations.of(context).getText(
              'dallc9zm' /* Features */,
            ),
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).hintTextBorder,
              ),
            ),
            child: Builder(
              builder: (context) {
                final featureLine = _model.features.toList();

                return FlutterFlowDataTable<FeatureStruct>(
                  controller: _model.paginatedDataTableController,
                  data: featureLine,
                  columnsBuilder: (onSortChanged) => [
                    DataColumn2(
                      label: DefaultTextStyle.merge(
                        softWrap: true,
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '4k6foi6t' /* featureId */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                    DataColumn2(
                      label: DefaultTextStyle.merge(
                        softWrap: true,
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'tiuym6ht' /* Feature Name */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                    DataColumn2(
                      label: DefaultTextStyle.merge(
                        softWrap: true,
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'p98mx26k' /* Feature Value */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                  dataRowBuilder: (featureLineItem, featureLineIndex, selected,
                          onSelectChanged) =>
                      DataRow(
                    selected: selected,
                    onSelectChanged: onSelectChanged,
                    color: WidgetStateProperty.all(
                      featureLineIndex % 2 == 0
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    cells: [
                      AdminFeaturesDataTableFeatureIdWidget(
                        key: Key(
                            'Keyydb_${featureLineIndex}_of_${featureLine.length}'),
                        initialValue: featureLineItem.featureId,
                      ),
                      AdminFeaturesDataTableFeatureNameWidget(
                        key: Key(
                            'Key1lm_${featureLineIndex}_of_${featureLine.length}'),
                        initialValue: featureLineItem.featureNames
                            .where(
                                (e) => e.languageCode == widget.languageCode)
                            .toList()
                            .first
                            .featureNameLocalized,
                      ),
                      AdminFeaturesDataTableFeatureValueWidget(
                        key: Key(
                            'Keyf83_${featureLineIndex}_of_${featureLine.length}'),
                        initialValue: featureLineItem.featureValues
                            .where(
                                (e) => e.languageCode == widget.languageCode)
                            .toList()
                            .first
                            .featureValueLocalized,
                      ),
                    ].map((c) => DataCell(c)).toList(),
                  ),
                  paginated: false,
                  selectable: true,
                  headingRowHeight: 56.0,
                  dataRowHeight: 60.0,
                  columnSpacing: 20.0,
                  headingRowColor: FlutterFlowTheme.of(context).secondary,
                  borderRadius: BorderRadius.circular(8.0),
                  addHorizontalDivider: true,
                  addTopAndBottomDivider: false,
                  hideDefaultHorizontalDivider: true,
                  horizontalDividerColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  horizontalDividerThickness: 1.0,
                  addVerticalDivider: false,
                  checkboxUnselectedFillColor: Colors.transparent,
                  checkboxSelectedFillColor: Colors.transparent,
                  checkboxCheckColor: const Color(0x8A000000),
                  checkboxUnselectedBorderColor: const Color(0x8A000000),
                  checkboxSelectedBorderColor: const Color(0x8A000000),
                );
              },
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FFButtonWidget(
                onPressed: (_model.paginatedDataTableController.selectedRows
                            .toList().isEmpty)
                    ? null
                    : () async {
                        logFirebaseEvent(
                            'ADMIN_FEATURES_COMP_Button_Delete_ON_TAP');
                        // Get Indexes to be deleted
                        logFirebaseEvent('Button_Delete_GetIndexestobedeleted');
                        _model.deleteFeaturesIndexList = _model
                            .paginatedDataTableController.selectedRows
                            .toList()
                            .cast<int>();
                        safeSetState(() {});
                        while (_model.deleteFeaturesIndexList.isNotEmpty) {
                          // Remove Feature
                          logFirebaseEvent('Button_Delete_RemoveFeature');
                          _model.removeAtIndexFromFeatures(
                              _model.deleteFeaturesIndexList.last);
                          safeSetState(() {});
                          // Mark as removed
                          logFirebaseEvent('Button_Delete_Markasremoved');
                          _model.removeAtIndexFromDeleteFeaturesIndexList(
                              _model.deleteFeaturesIndexList.last);
                          safeSetState(() {});
                          logFirebaseEvent('Button_Delete_wait__delay');
                          await Future.delayed(
                              const Duration(milliseconds: 1000));
                        }
                      },
                text: FFLocalizations.of(context).getText(
                  'xungodt9' /* Delete Selected */,
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
                  disabledColor: FlutterFlowTheme.of(context).primaryBackground,
                  disabledTextColor: const Color(0xFFD89B9E),
                  hoverColor: FlutterFlowTheme.of(context).errorBackground,
                  hoverBorderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 1.0,
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('ADMIN_FEATURES_COMP_Button_Reset_ON_TAP');
                  logFirebaseEvent('Button_Reset_update_component_state');
                  _model.features =
                      widget.featureList!.toList().cast<FeatureStruct>();
                  safeSetState(() {});
                },
                text: FFLocalizations.of(context).getText(
                  'k16p0deh' /* Reset Features */,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).transparent,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).callToAction,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                  hoverColor: FlutterFlowTheme.of(context).hoverBackground,
                  hoverBorderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 1.0,
                  ),
                  hoverElevation: 0.0,
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('ADMIN_FEATURES_Button_AddPrice_ON_TAP');
                  logFirebaseEvent('Button_AddPrice_update_component_state');
                  _model.addToFeatures(FeatureStruct());
                  safeSetState(() {});
                },
                text: FFLocalizations.of(context).getText(
                  '34ihg00v' /* Add Feature */,
                ),
                icon: const Icon(
                  Icons.add,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                  hoverColor: const Color(0xFF64B0E8),
                  hoverBorderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 1.0,
                  ),
                ),
              ),
            ].divide(const SizedBox(width: 12.0)).around(const SizedBox(width: 12.0)),
          ),
        ].divide(const SizedBox(height: 24.0)),
      ),
    );
  }
}
