import '/flutter_flow/flutter_flow_util.dart';
import '/not_authenticated/pricing/admin_plan_details/admin_plan_details_widget.dart';
import '/not_authenticated/pricing/admin_plan_header/admin_plan_header_widget.dart';
import 'admin_plan_card_widget.dart' show AdminPlanCardWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AdminPlanCardModel extends FlutterFlowModel<AdminPlanCardWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for Admin_Plan_Header component.
  late AdminPlanHeaderModel adminPlanHeaderModel1;
  // Model for Admin_Plan_Header component.
  late AdminPlanHeaderModel adminPlanHeaderModel2;
  // Model for Admin_Plan_Details component.
  late AdminPlanDetailsModel adminPlanDetailsModel;

  @override
  void initState(BuildContext context) {
    adminPlanHeaderModel1 = createModel(context, () => AdminPlanHeaderModel());
    adminPlanHeaderModel2 = createModel(context, () => AdminPlanHeaderModel());
    adminPlanDetailsModel = createModel(context, () => AdminPlanDetailsModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    adminPlanHeaderModel1.dispose();
    adminPlanHeaderModel2.dispose();
    adminPlanDetailsModel.dispose();
  }
}
