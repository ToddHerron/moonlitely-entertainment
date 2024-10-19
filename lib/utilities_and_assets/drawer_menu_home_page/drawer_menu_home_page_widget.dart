import '/account/auth/sign_in_modal/sign_in_modal_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'drawer_menu_home_page_model.dart';
export 'drawer_menu_home_page_model.dart';

class DrawerMenuHomePageWidget extends StatefulWidget {
  const DrawerMenuHomePageWidget({super.key});

  @override
  State<DrawerMenuHomePageWidget> createState() =>
      _DrawerMenuHomePageWidgetState();
}

class _DrawerMenuHomePageWidgetState extends State<DrawerMenuHomePageWidget> {
  late DrawerMenuHomePageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrawerMenuHomePageModel());

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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Builder(
            builder: (context) => FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('DRAWER_MENU_HOME_SIGN_IN_BTN_ON_TAP');
                // UI: Close side drawer
                logFirebaseEvent('Button_UIClosesidedrawer');
                Navigator.pop(context);
                // UI: Sign In dialog
                logFirebaseEvent('Button_UISignIndialog');
                await showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: const AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: const SignInModalWidget(),
                    );
                  },
                );
              },
              text: FFLocalizations.of(context).getText(
                'z4uwez4e' /* Sign In */,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
          ),
          FFButtonWidget(
            onPressed: () async {
              logFirebaseEvent('DRAWER_MENU_HOME_FOR_VENUES_BTN_ON_TAP');
              // UI: Close Drawer
              logFirebaseEvent('Button_UICloseDrawer');
              Navigator.pop(context);
              // NAV: Venue Benefits
              logFirebaseEvent('Button_NAVVenueBenefits');

              context.goNamed(
                'Benefits',
                queryParameters: {
                  'userType': serializeParam(
                    UserType.venue,
                    ParamType.Enum,
                  ),
                }.withoutNulls,
              );
            },
            text: FFLocalizations.of(context).getText(
              'efqnpzwk' /* For Venues */,
            ),
            options: FFButtonOptions(
              height: 40.0,
              padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
              logFirebaseEvent('DRAWER_MENU_HOME_FOR_PRODUCERS_BTN_ON_TA');
              // UI: Close Drawer
              logFirebaseEvent('Button_UICloseDrawer');
              Navigator.pop(context);
              // NAV: Benefits for Producers
              logFirebaseEvent('Button_NAVBenefitsforProducers');

              context.goNamed(
                'Benefits',
                queryParameters: {
                  'userType': serializeParam(
                    UserType.producer,
                    ParamType.Enum,
                  ),
                }.withoutNulls,
              );
            },
            text: FFLocalizations.of(context).getText(
              'eosdd8f7' /* For Producers */,
            ),
            options: FFButtonOptions(
              height: 40.0,
              padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
              logFirebaseEvent('DRAWER_MENU_HOME_FOR_PERFORMERS_BTN_ON_T');
              // UI: Close Drawer
              logFirebaseEvent('Button_UICloseDrawer');
              Navigator.pop(context);
              // NAV: Benefits for Performers
              logFirebaseEvent('Button_NAVBenefitsforPerformers');

              context.goNamed(
                'Benefits',
                queryParameters: {
                  'userType': serializeParam(
                    UserType.performer,
                    ParamType.Enum,
                  ),
                }.withoutNulls,
              );
            },
            text: FFLocalizations.of(context).getText(
              'omv2e3qb' /* For Performers */,
            ),
            options: FFButtonOptions(
              height: 40.0,
              padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
              logFirebaseEvent('DRAWER_MENU_HOME_FOR_CONTENT_CREATORS_BT');
              // UI: Close Drawer
              logFirebaseEvent('Button_UICloseDrawer');
              Navigator.pop(context);
              // NAV: Benefits for Creators
              logFirebaseEvent('Button_NAVBenefitsforCreators');

              context.goNamed(
                'Benefits',
                queryParameters: {
                  'userType': serializeParam(
                    UserType.contentcreator,
                    ParamType.Enum,
                  ),
                }.withoutNulls,
              );
            },
            text: FFLocalizations.of(context).getText(
              '1lnmgw7g' /* For Content Creators */,
            ),
            options: FFButtonOptions(
              height: 40.0,
              padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
        ].divide(const SizedBox(height: 36.0)),
      ),
    );
  }
}
