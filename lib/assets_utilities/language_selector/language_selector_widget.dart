import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'language_selector_model.dart';
export 'language_selector_model.dart';

class LanguageSelectorWidget extends StatefulWidget {
  const LanguageSelectorWidget({super.key});

  @override
  State<LanguageSelectorWidget> createState() => _LanguageSelectorWidgetState();
}

class _LanguageSelectorWidgetState extends State<LanguageSelectorWidget> {
  late LanguageSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguageSelectorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (FFLocalizations.of(context).languageCode != 'en')
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('LANGUAGE_SELECTOR_COMP_Text_EN_ON_TAP');
                logFirebaseEvent('Text_EN_set_app_language');
                setAppLanguage(context, 'en');
              },
              child: Text(
                FFLocalizations.of(context).getText(
                  'd0v50e5u' /* EN */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
        if (FFLocalizations.of(context).languageCode != 'es')
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('LANGUAGE_SELECTOR_COMP_Text_ES_ON_TAP');
                logFirebaseEvent('Text_ES_set_app_language');
                setAppLanguage(context, 'es');
              },
              child: Text(
                FFLocalizations.of(context).getText(
                  'kqlhb5t7' /* ES */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
        if (FFLocalizations.of(context).languageCode != 'fr')
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('LANGUAGE_SELECTOR_COMP_Text_FR_ON_TAP');
                logFirebaseEvent('Text_FR_set_app_language');
                setAppLanguage(context, 'fr');
              },
              child: Text(
                FFLocalizations.of(context).getText(
                  '6moyjp6b' /* FR */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
      ].divide(const SizedBox(width: 12.0)),
    );
  }
}
