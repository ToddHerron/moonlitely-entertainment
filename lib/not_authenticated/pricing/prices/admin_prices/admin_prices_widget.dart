import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/not_authenticated/pricing/prices/admin_prices_data_table_billing_cycle/admin_prices_data_table_billing_cycle_widget.dart';
import '/not_authenticated/pricing/prices/admin_prices_data_table_currency/admin_prices_data_table_currency_widget.dart';
import '/not_authenticated/pricing/prices/admin_prices_data_table_price/admin_prices_data_table_price_widget.dart';
import '/not_authenticated/pricing/prices/admin_prices_empty_list/admin_prices_empty_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'admin_prices_model.dart';
export 'admin_prices_model.dart';

class AdminPricesWidget extends StatefulWidget {
  const AdminPricesWidget({
    super.key,
    this.pricesList,
  });

  final List<PriceStruct>? pricesList;

  @override
  State<AdminPricesWidget> createState() => _AdminPricesWidgetState();
}

class _AdminPricesWidgetState extends State<AdminPricesWidget> {
  late AdminPricesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPricesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADMIN_PRICES_Admin_Prices_ON_INIT_STATE');
      logFirebaseEvent('Admin_Prices_update_component_state');
      _model.prices = widget.pricesList!.toList().cast<PriceStruct>();
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
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            FFLocalizations.of(context).getText(
              '8hwk91ot' /* Prices */,
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
                width: 1.0,
              ),
            ),
            child: Builder(
              builder: (context) {
                final priceLine = _model.prices.toList();
                if (priceLine.isEmpty) {
                  return const AdminPricesEmptyListWidget();
                }

                return FlutterFlowDataTable<PriceStruct>(
                  controller: _model.dataTablePricesController,
                  data: priceLine,
                  columnsBuilder: (onSortChanged) => [
                    DataColumn2(
                      label: DefaultTextStyle.merge(
                        softWrap: true,
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '3vewy3zu' /* BILLING CYCLE */,
                            ),
                            textAlign: TextAlign.start,
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
                              '9o0pjd5v' /* PRICE */,
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
                              'u8i98fxx' /* CURRENCY */,
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
                  dataRowBuilder: (priceLineItem, priceLineIndex, selected,
                          onSelectChanged) =>
                      DataRow(
                    selected: selected,
                    onSelectChanged: onSelectChanged,
                    color: WidgetStateProperty.all(
                      priceLineIndex % 2 == 0
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    cells: [
                      Container(
                        height: 43.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).hintTextBorder,
                            width: 1.0,
                          ),
                        ),
                        child: AdminPricesDataTableBillingCycleWidget(
                          key: Key(
                              'Keyjw9_${priceLineIndex}_of_${priceLine.length}'),
                          initialOption: priceLineItem.billingCycle,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Text(
                              FFAppState()
                                  .currencies
                                  .where((e) =>
                                      e.currencyCode ==
                                      priceLineItem.currency.currencyCode)
                                  .toList()
                                  .first
                                  .currencySymbol,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: AdminPricesDataTablePriceWidget(
                              key: Key(
                                  'Key6gn_${priceLineIndex}_of_${priceLine.length}'),
                              initialValue: formatNumber(
                                priceLineItem.amount,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 43.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).hintTextBorder,
                            width: 1.0,
                          ),
                        ),
                        child: AdminPricesDataTableCurrencyWidget(
                          key: Key(
                              'Keylfr_${priceLineIndex}_of_${priceLine.length}'),
                          initialOption: priceLineItem.currency.currencyCode,
                        ),
                      ),
                    ].map((c) => DataCell(c)).toList(),
                  ),
                  emptyBuilder: () => const AdminPricesEmptyListWidget(),
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
                  checkboxSelectedFillColor: FlutterFlowTheme.of(context).error,
                  checkboxCheckColor: FlutterFlowTheme.of(context).info,
                  checkboxUnselectedBorderColor:
                      FlutterFlowTheme.of(context).hintTextBorder,
                  checkboxSelectedBorderColor:
                      FlutterFlowTheme.of(context).primary,
                );
              },
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FFButtonWidget(
                onPressed: (_model.dataTablePricesController.selectedRows
                            .toList().isEmpty)
                    ? null
                    : () async {
                        logFirebaseEvent(
                            'ADMIN_PRICES_COMP_Button_Delete_ON_TAP');
                        // Get selected items list
                        logFirebaseEvent('Button_Delete_Getselecteditemslist');
                        _model.deletePricesIndexList = _model
                            .dataTablePricesController.selectedRows
                            .toList()
                            .cast<int>();
                        safeSetState(() {});
                        while (_model.deletePricesIndexList.isNotEmpty) {
                          // Remove feature
                          logFirebaseEvent('Button_Delete_Removefeature');
                          _model.removeAtIndexFromPrices(
                              _model.deletePricesIndexList.last);
                          safeSetState(() {});
                          // Mark as removed
                          logFirebaseEvent('Button_Delete_Markasremoved');
                          _model.removeAtIndexFromDeletePricesIndexList(
                              _model.deletePricesIndexList.last);
                          safeSetState(() {});
                          logFirebaseEvent('Button_Delete_wait__delay');
                          await Future.delayed(
                              const Duration(milliseconds: 1000));
                        }
                      },
                text: FFLocalizations.of(context).getText(
                  'nz5mzl6i' /* Delete Selected */,
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
                  logFirebaseEvent('ADMIN_PRICES_COMP_Button_Reset_ON_TAP');
                  logFirebaseEvent('Button_Reset_update_component_state');
                  _model.prices =
                      widget.pricesList!.toList().cast<PriceStruct>();
                  safeSetState(() {});
                },
                text: FFLocalizations.of(context).getText(
                  'tm0r0754' /* Reset Prices */,
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
                  logFirebaseEvent('ADMIN_PRICES_COMP_Button_AddPrice_ON_TAP');
                  logFirebaseEvent('Button_AddPrice_update_component_state');
                  _model.addToPrices(PriceStruct(
                    billingCycle: 'monthly',
                    amount: 0.00,
                    currency: CurrencyStruct(
                      currencyCode: CurrencyCode.CAD,
                      currencySymbol: '\$',
                    ),
                  ));
                  safeSetState(() {});
                },
                text: FFLocalizations.of(context).getText(
                  'plhpmrpu' /* Add Price */,
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
