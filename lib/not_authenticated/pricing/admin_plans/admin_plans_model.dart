import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/not_authenticated/pricing/admin_plan_card_empty_user_type/admin_plan_card_empty_user_type_widget.dart';
import 'admin_plans_widget.dart' show AdminPlansWidget;
import 'package:flutter/material.dart';

class AdminPlansModel extends FlutterFlowModel<AdminPlansWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown_userType widget.
  String? dropDownUserTypeValue;
  FormFieldController<String>? dropDownUserTypeValueController;
  // Stores action output result for [Backend Call - Read Document] action in DropDown_userType widget.
  PricingRecord? pricingDoc;
  // State field(s) for DropDown_Language widget.
  String? dropDownLanguageValue;
  FormFieldController<String>? dropDownLanguageValueController;
  // Stores action output result for [Backend Call - Read Document] action in Button_Reset widget.
  PricingRecord? pricingDocReset;
  // Model for Admin_PlanCard_EmptyUserType component.
  late AdminPlanCardEmptyUserTypeModel adminPlanCardEmptyUserTypeModel;

  @override
  void initState(BuildContext context) {
    adminPlanCardEmptyUserTypeModel =
        createModel(context, () => AdminPlanCardEmptyUserTypeModel());
  }

  @override
  void dispose() {
    adminPlanCardEmptyUserTypeModel.dispose();
  }
}
