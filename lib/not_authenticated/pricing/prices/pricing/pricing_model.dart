import '/flutter_flow/flutter_flow_util.dart';
import '/utilities_and_assets/responsive_page/responsive_page_widget.dart';
import 'pricing_widget.dart' show PricingWidget;
import 'package:flutter/material.dart';

class PricingModel extends FlutterFlowModel<PricingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ResponsivePage component.
  late ResponsivePageModel responsivePageModel;

  @override
  void initState(BuildContext context) {
    responsivePageModel = createModel(context, () => ResponsivePageModel());
  }

  @override
  void dispose() {
    responsivePageModel.dispose();
  }
}
