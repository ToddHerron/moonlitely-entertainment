import '/flutter_flow/flutter_flow_util.dart';
import '/utilities_and_assets/language_selector/language_selector_widget.dart';
import '/utilities_and_assets/moonlitely_logo_name/moonlitely_logo_name_widget.dart';
import 'responsive_header_widget.dart' show ResponsiveHeaderWidget;
import 'package:flutter/material.dart';

class ResponsiveHeaderModel extends FlutterFlowModel<ResponsiveHeaderWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Moonlitely_LogoName component.
  late MoonlitelyLogoNameModel moonlitelyLogoNameModel1;
  // Model for LanguageSelector component.
  late LanguageSelectorModel languageSelectorModel1;
  // Model for Moonlitely_LogoName component.
  late MoonlitelyLogoNameModel moonlitelyLogoNameModel2;
  // Model for LanguageSelector component.
  late LanguageSelectorModel languageSelectorModel2;

  @override
  void initState(BuildContext context) {
    moonlitelyLogoNameModel1 =
        createModel(context, () => MoonlitelyLogoNameModel());
    languageSelectorModel1 =
        createModel(context, () => LanguageSelectorModel());
    moonlitelyLogoNameModel2 =
        createModel(context, () => MoonlitelyLogoNameModel());
    languageSelectorModel2 =
        createModel(context, () => LanguageSelectorModel());
  }

  @override
  void dispose() {
    moonlitelyLogoNameModel1.dispose();
    languageSelectorModel1.dispose();
    moonlitelyLogoNameModel2.dispose();
    languageSelectorModel2.dispose();
  }
}
