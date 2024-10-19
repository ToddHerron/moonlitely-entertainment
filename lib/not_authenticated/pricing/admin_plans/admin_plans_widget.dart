import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/not_authenticated/pricing/admin_plan_card/admin_plan_card_widget.dart';
import '/not_authenticated/pricing/admin_plan_card_empty_list/admin_plan_card_empty_list_widget.dart';
import '/not_authenticated/pricing/admin_plan_card_empty_user_type/admin_plan_card_empty_user_type_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'admin_plans_model.dart';
export 'admin_plans_model.dart';

class AdminPlansWidget extends StatefulWidget {
  const AdminPlansWidget({super.key});

  @override
  State<AdminPlansWidget> createState() => _AdminPlansWidgetState();
}

class _AdminPlansWidgetState extends State<AdminPlansWidget> {
  late AdminPlansModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPlansModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'AdminPlans'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADMIN_PLANS_AdminPlans_ON_INIT_STATE');
      // Admin language = English
      logFirebaseEvent('AdminPlans_AdminlanguageEnglish');
      setAppLanguage(context, 'en');
      if (!(FFAppState().AdminPricingLanguageCode != '')) {
        // NO: Default to English
        logFirebaseEvent('AdminPlans_NODefaulttoEnglish');
        FFAppState().AdminPricingLanguageCode = 'en';
        safeSetState(() {});
        logFirebaseEvent('AdminPlans_set_form_field');
        safeSetState(() {
          _model.dropDownLanguageValueController?.value = 'en';
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'AdminPlans',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondary,
              automaticallyImplyLeading: false,
              title: Text(
                FFLocalizations.of(context).getText(
                  '4lqfiszu' /* Admin - Pricing */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [
                FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).transparent,
                  icon: Icon(
                    Icons.logout,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('ADMIN_PLANS_PAGE_logout_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_auth');
                    GoRouter.of(context).prepareAuthEvent();
                    await authManager.signOut();
                    GoRouter.of(context).clearRedirectLocation();

                    context.goNamedAuth('Pricing', context.mounted);
                  },
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).transparent,
                    icon: Icon(
                      Icons.person,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('ADMIN_PLANS_PAGE_person_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_navigate_to');

                      context.pushNamed('auth_2_Profile');
                    },
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  phone: false,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StickyHeader(
                          overlapHeaders: false,
                          header: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 50.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 2.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '7njw5qy4' /* User Type */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownUserTypeValueController ??=
                                              FormFieldController<String>(
                                            _model.dropDownUserTypeValue ??=
                                                FFAppState()
                                                    .AdminPricingUserType
                                                    ?.name,
                                          ),
                                          options: List<String>.from([
                                            'contentcreator',
                                            'performer',
                                            'producer',
                                            'venue'
                                          ]),
                                          optionLabels: [
                                            FFLocalizations.of(context).getText(
                                              'n7voiryd' /* Content Creator */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '3kppxd7p' /* Performer */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'roi1pc87' /* Producer */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'hzpubwca' /* Venue */,
                                            )
                                          ],
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownUserTypeValue = val);
                                            logFirebaseEvent(
                                                'ADMIN_PLANS_DropDown_userType_ON_FORM_WI');
                                            var shouldSetState = false;
                                            // STATE: Set User Type
                                            logFirebaseEvent(
                                                'DropDown_userType_STATESetUserType');
                                            FFAppState().AdminPricingUserType =
                                                functions
                                                    .convertStringToUserTypeEnum(
                                                        _model
                                                            .dropDownUserTypeValue!);
                                            safeSetState(() {});
                                            // DB: Get pricing document
                                            logFirebaseEvent(
                                                'DropDown_userType_DBGetpricingdocument');
                                            _model.pricingDoc = await PricingRecord
                                                .getDocumentOnce(functions
                                                    .pricingDocumentReferenceFromUserType(
                                                        functions
                                                            .convertUserTypeEnumToString(
                                                                FFAppState()
                                                                    .AdminPricingUserType!)));
                                            shouldSetState = true;
                                            if (_model
                                                .pricingDoc!.plans.isNotEmpty) {
                                              // STATE: Yes, add plans
                                              logFirebaseEvent(
                                                  'DropDown_userType_STATEYesaddplans');
                                              FFAppState().AdminPricingPlans =
                                                  _model.pricingDoc!.plans
                                                      .toList()
                                                      .cast<PlanStruct>();
                                              safeSetState(() {});
                                              if (shouldSetState) {
                                                safeSetState(() {});
                                              }
                                              return;
                                            } else {
                                              if (shouldSetState) {
                                                safeSetState(() {});
                                              }
                                              return;
                                            }

                                            if (shouldSetState) {
                                              safeSetState(() {});
                                            }
                                          },
                                          width: 200.0,
                                          height: 40.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'hx3ogek6' /* Select... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'dsd0t2zi' /* Plan Language */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownLanguageValueController ??=
                                              FormFieldController<String>(
                                            _model.dropDownLanguageValue ??=
                                                FFAppState()
                                                    .AdminPricingLanguageCode,
                                          ),
                                          options: List<String>.from(
                                              ['en', 'fr', 'es']),
                                          optionLabels: [
                                            FFLocalizations.of(context).getText(
                                              'tkc7ghv6' /* English */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'rz0reu0r' /* French */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'gwjst9ox' /* Spanish */,
                                            )
                                          ],
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .dropDownLanguageValue = val);
                                            logFirebaseEvent(
                                                'ADMIN_PLANS_DropDown_Language_ON_FORM_WI');
                                            logFirebaseEvent(
                                                'DropDown_Language_update_app_state');
                                            FFAppState()
                                                    .AdminPricingLanguageCode =
                                                _model.dropDownLanguageValue!;
                                            safeSetState(() {});
                                          },
                                          width: 200.0,
                                          height: 40.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'rc17frmr' /* Select... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ].divide(const SizedBox(width: 24.0)),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: (_model
                                                        .dropDownUserTypeValue ==
                                                    null ||
                                                _model.dropDownUserTypeValue ==
                                                    '')
                                            ? null
                                            : () async {
                                                logFirebaseEvent(
                                                    'ADMIN_PLANS_PAGE_Button_AddPlan_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_AddPlan_update_app_state');
                                                FFAppState()
                                                    .addToAdminPricingPlans(
                                                        PlanStruct());
                                                safeSetState(() {});
                                              },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'w4axoopm' /* Add Plan */,
                                        ),
                                        icon: const Icon(
                                          Icons.add,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  28.0, 0.0, 28.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .transparent,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .callToAction,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          disabledTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .hintTextBorder,
                                          hoverColor: const Color(0x1AEFEFF3),
                                          hoverTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: (_model
                                                        .dropDownUserTypeValue ==
                                                    null ||
                                                _model.dropDownUserTypeValue ==
                                                    '')
                                            ? null
                                            : () async {
                                                logFirebaseEvent(
                                                    'ADMIN_PLANS_Button_ClearPlans_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_ClearPlans_update_app_state');
                                                FFAppState()
                                                    .deleteAdminPricingPlans();
                                                FFAppState().AdminPricingPlans =
                                                    [];

                                                safeSetState(() {});
                                              },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'tnwtqllp' /* Clear Plans */,
                                        ),
                                        icon: const Icon(
                                          Icons.clear_all,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  28.0, 0.0, 28.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .transparent,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .callToAction,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          disabledColor: const Color(0xFF055488),
                                          disabledTextColor: const Color(0xFFB5C4DC),
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .hoverBackground,
                                          hoverBorderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          hoverElevation: 0.0,
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: (_model
                                                        .dropDownUserTypeValue ==
                                                    null ||
                                                _model.dropDownUserTypeValue ==
                                                    '')
                                            ? null
                                            : () async {
                                                logFirebaseEvent(
                                                    'ADMIN_PLANS_PAGE_Button_Reset_ON_TAP');
                                                // DB: Get latest saved pricing
                                                logFirebaseEvent(
                                                    'Button_Reset_DBGetlatestsavedpricing');
                                                _model.pricingDocReset =
                                                    await PricingRecord
                                                        .getDocumentOnce(functions
                                                            .pricingDocumentReferenceFromUserType(
                                                                _model
                                                                    .dropDownUserTypeValue!));
                                                // State
                                                logFirebaseEvent(
                                                    'Button_Reset_State');
                                                FFAppState().AdminPricingPlans =
                                                    _model
                                                        .pricingDocReset!.plans
                                                        .toList()
                                                        .cast<PlanStruct>();
                                                safeSetState(() {});

                                                safeSetState(() {});
                                              },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'oqfw37yv' /* Reset Plans */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  28.0, 0.0, 28.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .transparent,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .callToAction,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          disabledColor: const Color(0xFF055488),
                                          disabledTextColor: const Color(0xFFB5C4DC),
                                          hoverColor:
                                              FlutterFlowTheme.of(context)
                                                  .hoverBackground,
                                          hoverBorderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          hoverElevation: 0.0,
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: (_model
                                                        .dropDownUserTypeValue ==
                                                    null ||
                                                _model.dropDownUserTypeValue ==
                                                    '')
                                            ? null
                                            : () async {
                                                logFirebaseEvent(
                                                    'ADMIN_PLANS_PAGE_Button_SavePlans_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_SavePlans_backend_call');

                                                await functions
                                                    .pricingDocumentReferenceFromUserType(
                                                        _model
                                                            .dropDownUserTypeValue!)
                                                    .update({
                                                  ...createPricingRecordData(
                                                    userType: functions
                                                        .convertStringToUserTypeEnum(
                                                            _model
                                                                .dropDownUserTypeValue!),
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'plans':
                                                          getPlanListFirestoreData(
                                                        FFAppState()
                                                            .AdminPricingPlans,
                                                      ),
                                                    },
                                                  ),
                                                });
                                              },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'xxzynyti' /* Save  Plans */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  28.0, 0.0, 28.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          disabledColor: const Color(0xFF055488),
                                          disabledTextColor: const Color(0xFFB5C4DC),
                                          hoverColor: const Color(0xFF64B0E8),
                                          hoverBorderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 24.0)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          content: Builder(
                            builder: (context) {
                              if (_model.dropDownUserTypeValue != null &&
                                  _model.dropDownUserTypeValue != '') {
                                return Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: Builder(
                                    builder: (context) {
                                      final plansList = FFAppState()
                                          .AdminPricingPlans
                                          .map((e) => e)
                                          .toList();
                                      if (plansList.isEmpty) {
                                        return const AdminPlanCardEmptyListWidget();
                                      }

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            plansList.length, (plansListIndex) {
                                          final plansListItem =
                                              plansList[plansListIndex];
                                          return AdminPlanCardWidget(
                                            key: Key(
                                                'Keykta_${plansListIndex}_of_${plansList.length}'),
                                            languageCode:
                                                _model.dropDownLanguageValue!,
                                            planIndex: plansListIndex,
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                );
                              } else {
                                return wrapWithModel(
                                  model: _model.adminPlanCardEmptyUserTypeModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const AdminPlanCardEmptyUserTypeWidget(),
                                );
                              }
                            },
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 24.0))
                          .around(const SizedBox(height: 24.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
