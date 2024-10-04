import '/assets_utilities/language_selector/language_selector_widget.dart';
import '/assets_utilities/moonlitely_logo_name/moonlitely_logo_name_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Moonlitely_LogoName component.
  late MoonlitelyLogoNameModel moonlitelyLogoNameModel1;
  // Model for LanguageSelector component.
  late LanguageSelectorModel languageSelectorModel1;
  // Model for Moonlitely_LogoName component.
  late MoonlitelyLogoNameModel moonlitelyLogoNameModel2;
  // Model for LanguageSelector component.
  late LanguageSelectorModel languageSelectorModel2;
  // Model for Moonlitely_LogoName component.
  late MoonlitelyLogoNameModel moonlitelyLogoNameModel3;
  // Model for LanguageSelector component.
  late LanguageSelectorModel languageSelectorModel3;

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
    moonlitelyLogoNameModel3 =
        createModel(context, () => MoonlitelyLogoNameModel());
    languageSelectorModel3 =
        createModel(context, () => LanguageSelectorModel());
  }

  @override
  void dispose() {
    moonlitelyLogoNameModel1.dispose();
    languageSelectorModel1.dispose();
    moonlitelyLogoNameModel2.dispose();
    languageSelectorModel2.dispose();
    moonlitelyLogoNameModel3.dispose();
    languageSelectorModel3.dispose();
  }
}
