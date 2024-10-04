import '/assets_utilities/language_selector/language_selector_widget.dart';
import '/assets_utilities/moonlitely_logo_name/moonlitely_logo_name_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_old_widget.dart' show HomePageOldWidget;
import 'package:flutter/material.dart';

class HomePageOldModel extends FlutterFlowModel<HomePageOldWidget> {
  ///  Local state fields for this page.

  double? venueContainerHeight = 0.0;

  ///  State fields for stateful widgets in this page.

  // Model for LanguageSelector component.
  late LanguageSelectorModel languageSelectorModel;
  // Model for Moonlitely_LogoName component.
  late MoonlitelyLogoNameModel moonlitelyLogoNameModel;

  @override
  void initState(BuildContext context) {
    languageSelectorModel = createModel(context, () => LanguageSelectorModel());
    moonlitelyLogoNameModel =
        createModel(context, () => MoonlitelyLogoNameModel());
  }

  @override
  void dispose() {
    languageSelectorModel.dispose();
    moonlitelyLogoNameModel.dispose();
  }
}
