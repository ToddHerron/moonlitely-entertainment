import '/account/auth/sign_in_modal/sign_in_modal_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utilities_and_assets/language_selector/language_selector_widget.dart';
import '/utilities_and_assets/moonlitely_logo_name/moonlitely_logo_name_widget.dart';
import 'package:flutter/material.dart';
import 'responsive_header_model.dart';
export 'responsive_header_model.dart';

class ResponsiveHeaderWidget extends StatefulWidget {
  const ResponsiveHeaderWidget({super.key});

  @override
  State<ResponsiveHeaderWidget> createState() => _ResponsiveHeaderWidgetState();
}

class _ResponsiveHeaderWidgetState extends State<ResponsiveHeaderWidget> {
  late ResponsiveHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResponsiveHeaderModel());

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
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).backgroundBlack,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.moonlitelyLogoNameModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: const MoonlitelyLogoNameWidget(),
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              wrapWithModel(
                                model: _model.languageSelectorModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: const LanguageSelectorWidget(),
                              ),
                              Builder(
                                builder: (context) => FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'RESPONSIVE_HEADER_Button_SignIn_ON_TAP');
                                    logFirebaseEvent(
                                        'Button_SignIn_alert_dialog');
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: const AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: const SignInModalWidget(),
                                        );
                                      },
                                    );
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'mpj1mtet' /* Sign In */,
                                  ),
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        28.0, 0.0, 28.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .transparent,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .callToAction,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                    hoverColor: FlutterFlowTheme.of(context)
                                        .hoverBackground,
                                    hoverBorderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    hoverElevation: 0.0,
                                  ),
                                ),
                              ),
                            ]
                                .divide(const SizedBox(width: 24.0))
                                .around(const SizedBox(width: 24.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        wrapWithModel(
                          model: _model.moonlitelyLogoNameModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: const MoonlitelyLogoNameWidget(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 12.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.menu,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'RESPONSIVE_HEADER_COMP_menu_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_drawer');
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                      child: wrapWithModel(
                        model: _model.languageSelectorModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: const LanguageSelectorWidget(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
