import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilities_and_assets/mobile_landscape_error/mobile_landscape_error_widget.dart';
import '/utilities_and_assets/responsive_body_content/responsive_body_content_widget.dart';
import '/utilities_and_assets/responsive_header/responsive_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'responsive_page_model.dart';
export 'responsive_page_model.dart';

class ResponsivePageWidget extends StatefulWidget {
  const ResponsivePageWidget({
    super.key,
    required this.pageContent,
    required this.showHeader,
  });

  final Widget Function()? pageContent;
  final bool? showHeader;

  @override
  State<ResponsivePageWidget> createState() => _ResponsivePageWidgetState();
}

class _ResponsivePageWidgetState extends State<ResponsivePageWidget> {
  late ResponsivePageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResponsivePageModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('RESPONSIVE_ResponsivePage_ON_INIT_STATE');
      if (loggedIn) {
        return;
      }

      // No - Set to Light Mode
      logFirebaseEvent('ResponsivePage_No-SettoLightMode');
      setDarkModeSetting(context, ThemeMode.light);
      return;
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
    return Builder(
      builder: (context) {
        if (MediaQuery.sizeOf(context).height > kBreakpointSmall) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Builder(
                  builder: (context) {
                    if (!loggedIn) {
                      return SafeArea(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/Brick_Background.png',
                              ).image,
                            ),
                          ),
                          child: Builder(
                            builder: (context) {
                              if (widget.showHeader ?? false) {
                                return Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0,
                                          valueOrDefault<double>(
                                            FFAppConstants.headerHeight
                                                .toDouble(),
                                            0.0,
                                          ),
                                          0.0,
                                          0.0),
                                      child: wrapWithModel(
                                        model:
                                            _model.responsiveBodyContentModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResponsiveBodyContentWidget(
                                          pageContent: () =>
                                              widget.pageContent!(),
                                        ),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.responsiveHeaderModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const ResponsiveHeaderWidget(),
                                    ),
                                  ],
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      valueOrDefault<double>(
                                        FFAppConstants.headerHeight.toDouble(),
                                        0.0,
                                      ),
                                      0.0,
                                      0.0),
                                  child: wrapWithModel(
                                    model: _model.responsiveBodyContentModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ResponsiveBodyContentWidget(
                                      pageContent: () => widget.pageContent!(),
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      );
                    } else {
                      return Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              FlutterFlowTheme.of(context).backgroundBlack,
                              FlutterFlowTheme.of(context).tertiary,
                              FlutterFlowTheme.of(context).primary
                            ],
                            stops: const [0.0, 0.7, 0.99],
                            begin: const AlignmentDirectional(0.17, -1.0),
                            end: const AlignmentDirectional(-0.17, 1.0),
                          ),
                        ),
                        child: Builder(
                          builder: (context) {
                            if (widget.showHeader ?? false) {
                              return Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0,
                                        valueOrDefault<double>(
                                          widget.showHeader!
                                              ? FFAppConstants.headerHeight
                                                  .toDouble()
                                              : 0.0,
                                          0.0,
                                        ),
                                        0.0,
                                        0.0),
                                    child: wrapWithModel(
                                      model: _model.responsiveBodyContentModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ResponsiveBodyContentWidget(
                                        pageContent: () =>
                                            widget.pageContent!(),
                                      ),
                                    ),
                                  ),
                                  if (widget.showHeader ?? true)
                                    wrapWithModel(
                                      model: _model.responsiveHeaderModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const ResponsiveHeaderWidget(),
                                    ),
                                ],
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0,
                                    valueOrDefault<double>(
                                      widget.showHeader!
                                          ? FFAppConstants.headerHeight
                                              .toDouble()
                                          : 0.0,
                                      0.0,
                                    ),
                                    0.0,
                                    0.0),
                                child: wrapWithModel(
                                  model: _model.responsiveBodyContentModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ResponsiveBodyContentWidget(
                                    pageContent: () => widget.pageContent!(),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          );
        } else {
          return Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: wrapWithModel(
              model: _model.mobileLandscapeErrorModel,
              updateCallback: () => safeSetState(() {}),
              child: const MobileLandscapeErrorWidget(),
            ),
          );
        }
      },
    );
  }
}
