import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/not_authenticated/benefits/benefits_creators_content/benefits_creators_content_widget.dart';
import '/not_authenticated/benefits/benefits_performers_content/benefits_performers_content_widget.dart';
import '/not_authenticated/benefits/benefits_venues_content/benefits_venues_content_widget.dart';
import '/utilities_and_assets/drawer_menu_home_page/drawer_menu_home_page_widget.dart';
import '/utilities_and_assets/empty_container/empty_container_widget.dart';
import '/utilities_and_assets/responsive_page/responsive_page_widget.dart';
import 'package:flutter/material.dart';
import 'benefits_model.dart';
export 'benefits_model.dart';

class BenefitsWidget extends StatefulWidget {
  const BenefitsWidget({
    super.key,
    required this.userType,
  });

  final UserType? userType;

  @override
  State<BenefitsWidget> createState() => _BenefitsWidgetState();
}

class _BenefitsWidgetState extends State<BenefitsWidget> {
  late BenefitsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BenefitsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Benefits'});
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
        title: 'Benefits',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).backgroundBlack,
            drawer: Drawer(
              elevation: 16.0,
              child: wrapWithModel(
                model: _model.drawerMenuHomePageModel,
                updateCallback: () => safeSetState(() {}),
                child: const DrawerMenuHomePageWidget(),
              ),
            ),
            body: SafeArea(
              top: true,
              child: wrapWithModel(
                model: _model.responsivePageModel,
                updateCallback: () => safeSetState(() {}),
                child: ResponsivePageWidget(
                  showHeader: true,
                  pageContent: () => () {
                    if (widget.userType == UserType.audience) {
                      return const EmptyContainerWidget();
                    } else if (widget.userType == UserType.contentcreator) {
                      return const BenefitsCreatorsContentWidget();
                    } else if (widget.userType == UserType.performer) {
                      return const BenefitsPerformersContentWidget();
                    } else if (widget.userType == UserType.venue) {
                      return const BenefitsVenuesContentWidget();
                    } else {
                      return const EmptyContainerWidget();
                    }
                  }(),
                ),
              ),
            ),
          ),
        ));
  }
}
