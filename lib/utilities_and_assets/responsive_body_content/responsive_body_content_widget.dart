import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'responsive_body_content_model.dart';
export 'responsive_body_content_model.dart';

class ResponsiveBodyContentWidget extends StatefulWidget {
  const ResponsiveBodyContentWidget({
    super.key,
    required this.pageContent,
  });

  final Widget Function()? pageContent;

  @override
  State<ResponsiveBodyContentWidget> createState() =>
      _ResponsiveBodyContentWidgetState();
}

class _ResponsiveBodyContentWidgetState
    extends State<ResponsiveBodyContentWidget> {
  late ResponsiveBodyContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResponsiveBodyContentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(),
              child: Builder(builder: (_) {
                return widget.pageContent!();
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'rfb9pr9g' /* © 2024 Moonlitely Entertainmen... */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    fontFamily: 'Inter',
                    fontSize: 10.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
