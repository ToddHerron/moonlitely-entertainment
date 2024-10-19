import '/flutter_flow/flutter_flow_util.dart';
import '/utilities_and_assets/mobile_landscape_error/mobile_landscape_error_widget.dart';
import '/utilities_and_assets/responsive_body_content/responsive_body_content_widget.dart';
import '/utilities_and_assets/responsive_header/responsive_header_widget.dart';
import 'responsive_page_widget.dart' show ResponsivePageWidget;
import 'package:flutter/material.dart';

class ResponsivePageModel extends FlutterFlowModel<ResponsivePageWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ResponsiveBodyContent component.
  late ResponsiveBodyContentModel responsiveBodyContentModel1;
  // Model for ResponsiveHeader component.
  late ResponsiveHeaderModel responsiveHeaderModel1;
  // Model for ResponsiveBodyContent component.
  late ResponsiveBodyContentModel responsiveBodyContentModel2;
  // Model for ResponsiveBodyContent component.
  late ResponsiveBodyContentModel responsiveBodyContentModel3;
  // Model for ResponsiveHeader component.
  late ResponsiveHeaderModel responsiveHeaderModel2;
  // Model for ResponsiveBodyContent component.
  late ResponsiveBodyContentModel responsiveBodyContentModel4;
  // Model for MobileLandscapeError component.
  late MobileLandscapeErrorModel mobileLandscapeErrorModel;

  @override
  void initState(BuildContext context) {
    responsiveBodyContentModel1 =
        createModel(context, () => ResponsiveBodyContentModel());
    responsiveHeaderModel1 =
        createModel(context, () => ResponsiveHeaderModel());
    responsiveBodyContentModel2 =
        createModel(context, () => ResponsiveBodyContentModel());
    responsiveBodyContentModel3 =
        createModel(context, () => ResponsiveBodyContentModel());
    responsiveHeaderModel2 =
        createModel(context, () => ResponsiveHeaderModel());
    responsiveBodyContentModel4 =
        createModel(context, () => ResponsiveBodyContentModel());
    mobileLandscapeErrorModel =
        createModel(context, () => MobileLandscapeErrorModel());
  }

  @override
  void dispose() {
    responsiveBodyContentModel1.dispose();
    responsiveHeaderModel1.dispose();
    responsiveBodyContentModel2.dispose();
    responsiveBodyContentModel3.dispose();
    responsiveHeaderModel2.dispose();
    responsiveBodyContentModel4.dispose();
    mobileLandscapeErrorModel.dispose();
  }
}
