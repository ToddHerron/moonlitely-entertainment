import '/flutter_flow/flutter_flow_util.dart';
import '/utilities_and_assets/drawer_menu_home_page/drawer_menu_home_page_widget.dart';
import '/utilities_and_assets/responsive_page/responsive_page_widget.dart';
import 'benefits_widget.dart' show BenefitsWidget;
import 'package:flutter/material.dart';

class BenefitsModel extends FlutterFlowModel<BenefitsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DrawerMenu_HomePage component.
  late DrawerMenuHomePageModel drawerMenuHomePageModel;
  // Model for ResponsivePage component.
  late ResponsivePageModel responsivePageModel;

  @override
  void initState(BuildContext context) {
    drawerMenuHomePageModel =
        createModel(context, () => DrawerMenuHomePageModel());
    responsivePageModel = createModel(context, () => ResponsivePageModel());
  }

  @override
  void dispose() {
    drawerMenuHomePageModel.dispose();
    responsivePageModel.dispose();
  }
}
