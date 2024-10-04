import '/assets_utilities/language_selector/language_selector_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_recent_widget.dart' show HomePageRecentWidget;
import 'package:flutter/material.dart';

class HomePageRecentModel extends FlutterFlowModel<HomePageRecentWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LanguageSelector component.
  late LanguageSelectorModel languageSelectorModel1;
  // Model for LanguageSelector component.
  late LanguageSelectorModel languageSelectorModel2;

  @override
  void initState(BuildContext context) {
    languageSelectorModel1 =
        createModel(context, () => LanguageSelectorModel());
    languageSelectorModel2 =
        createModel(context, () => LanguageSelectorModel());
  }

  @override
  void dispose() {
    languageSelectorModel1.dispose();
    languageSelectorModel2.dispose();
  }
}
