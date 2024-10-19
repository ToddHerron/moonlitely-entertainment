import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/not_authenticated/benefits/benefits_creators_content/benefits_creators_content_widget.dart';
import '/utilities_and_assets/empty_container/empty_container_widget.dart';
import '/utilities_and_assets/responsive_page/responsive_page_widget.dart';
import 'package:flutter/material.dart';
import 'pricing_model.dart';
export 'pricing_model.dart';

class PricingWidget extends StatefulWidget {
  const PricingWidget({
    super.key,
    this.userType,
  });

  final UserType? userType;

  @override
  State<PricingWidget> createState() => _PricingWidgetState();
}

class _PricingWidgetState extends State<PricingWidget> {
  late PricingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PricingModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Pricing'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Pricing',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).backgroundBlack,
            body: SafeArea(
              top: true,
              child: wrapWithModel(
                model: _model.responsivePageModel,
                updateCallback: () => safeSetState(() {}),
                child: ResponsivePageWidget(
                  showHeader: true,
                  pageContent: () => (widget.userType != null) &&
                          (widget.userType == UserType.venue)
                      ? const BenefitsCreatorsContentWidget()
                      : const EmptyContainerWidget(),
                ),
              ),
            ),
          ),
        ));
  }
}
