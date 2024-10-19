import '/flutter_flow/flutter_flow_util.dart';
import 'admin_features_data_table_feature_value_widget.dart'
    show AdminFeaturesDataTableFeatureValueWidget;
import 'package:flutter/material.dart';

class AdminFeaturesDataTableFeatureValueModel
    extends FlutterFlowModel<AdminFeaturesDataTableFeatureValueWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
