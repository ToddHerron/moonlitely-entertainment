import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilities_and_assets/language_selector/language_selector_widget.dart';
import '/utilities_and_assets/moonlitely_logo_name/moonlitely_logo_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'mobile_landscape_error_model.dart';
export 'mobile_landscape_error_model.dart';

class MobileLandscapeErrorWidget extends StatefulWidget {
  /// This component is shown in someone using a mobile device tries to view the
  /// app in landscape mode. It directs them to reorient their device to
  /// portrait mode.
  const MobileLandscapeErrorWidget({super.key});

  @override
  State<MobileLandscapeErrorWidget> createState() =>
      _MobileLandscapeErrorWidgetState();
}

class _MobileLandscapeErrorWidgetState
    extends State<MobileLandscapeErrorWidget> {
  late MobileLandscapeErrorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileLandscapeErrorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: const BoxDecoration(),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              wrapWithModel(
                model: _model.moonlitelyLogoNameModel,
                updateCallback: () => safeSetState(() {}),
                child: const MoonlitelyLogoNameWidget(),
              ),
              wrapWithModel(
                model: _model.languageSelectorModel,
                updateCallback: () => safeSetState(() {}),
                child: const LanguageSelectorWidget(),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'vly0lrpm' /* You'll love us in portrait mod... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              FaIcon(
                FontAwesomeIcons.mobileAlt,
                color: FlutterFlowTheme.of(context).primary,
                size: 24.0,
              ),
            ].divide(const SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
