import '/flutter_flow/flutter_flow_util.dart';
import '/utilities_and_assets/drawer_menu_home_page/drawer_menu_home_page_widget.dart';
import '/utilities_and_assets/language_selector/language_selector_widget.dart';
import '/utilities_and_assets/moonlitely_logo_name/moonlitely_logo_name_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DrawerMenu_HomePage component.
  late DrawerMenuHomePageModel drawerMenuHomePageModel;
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
    drawerMenuHomePageModel =
        createModel(context, () => DrawerMenuHomePageModel());
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
    drawerMenuHomePageModel.dispose();
    moonlitelyLogoNameModel1.dispose();
    languageSelectorModel1.dispose();
    moonlitelyLogoNameModel2.dispose();
    languageSelectorModel2.dispose();
    moonlitelyLogoNameModel3.dispose();
    languageSelectorModel3.dispose();
  }
}
