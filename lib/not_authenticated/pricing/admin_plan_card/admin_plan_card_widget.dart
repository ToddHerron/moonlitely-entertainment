import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/not_authenticated/pricing/admin_plan_details/admin_plan_details_widget.dart';
import '/not_authenticated/pricing/admin_plan_header/admin_plan_header_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'admin_plan_card_model.dart';
export 'admin_plan_card_model.dart';

class AdminPlanCardWidget extends StatefulWidget {
  const AdminPlanCardWidget({
    super.key,
    required this.languageCode,
    required this.planIndex,
  });

  final String? languageCode;
  final int? planIndex;

  @override
  State<AdminPlanCardWidget> createState() => _AdminPlanCardWidgetState();
}

class _AdminPlanCardWidgetState extends State<AdminPlanCardWidget> {
  late AdminPlanCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPlanCardModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: 200.0,
              color: const Color(0x00000000),
              child: ExpandableNotifier(
                controller: _model.expandableExpandableController,
                child: ExpandablePanel(
                  header: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'f15vb7i1' /* Header */,
                      ),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  collapsed: wrapWithModel(
                    model: _model.adminPlanHeaderModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: AdminPlanHeaderWidget(
                      languageCode: widget.languageCode!,
                      planIndex: widget.planIndex!,
                    ),
                  ),
                  expanded: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.adminPlanHeaderModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: AdminPlanHeaderWidget(
                          languageCode: widget.languageCode!,
                          planIndex: widget.planIndex!,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.adminPlanDetailsModel,
                        updateCallback: () => safeSetState(() {}),
                        child: AdminPlanDetailsWidget(
                          languageCode: widget.languageCode!,
                          planIndex: widget.planIndex!,
                        ),
                      ),
                    ],
                  ),
                  theme: const ExpandableThemeData(
                    tapHeaderToExpand: true,
                    tapBodyToExpand: true,
                    tapBodyToCollapse: true,
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    hasIcon: true,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
