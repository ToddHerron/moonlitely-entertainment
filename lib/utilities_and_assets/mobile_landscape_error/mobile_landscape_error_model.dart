import '/flutter_flow/flutter_flow_util.dart';
import '/utilities_and_assets/language_selector/language_selector_widget.dart';
import '/utilities_and_assets/moonlitely_logo_name/moonlitely_logo_name_widget.dart';
import 'mobile_landscape_error_widget.dart' show MobileLandscapeErrorWidget;
import 'package:flutter/material.dart';

class MobileLandscapeErrorModel
    extends FlutterFlowModel<MobileLandscapeErrorWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Moonlitely_LogoName component.
  late MoonlitelyLogoNameModel moonlitelyLogoNameModel;
  // Model for LanguageSelector component.
  late LanguageSelectorModel languageSelectorModel;

  @override
  void initState(BuildContext context) {
    moonlitelyLogoNameModel =
        createModel(context, () => MoonlitelyLogoNameModel());
    languageSelectorModel = createModel(context, () => LanguageSelectorModel());
  }

  @override
  void dispose() {
    moonlitelyLogoNameModel.dispose();
    languageSelectorModel.dispose();
  }
}
