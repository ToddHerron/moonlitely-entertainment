import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'moonlitely_logo_name_model.dart';
export 'moonlitely_logo_name_model.dart';

class MoonlitelyLogoNameWidget extends StatefulWidget {
  /// Colour, no background, Logo, Name, Slogan
  const MoonlitelyLogoNameWidget({
    super.key,
    int? topPadding,
  }) : topPadding = topPadding ?? 50;

  final int topPadding;

  @override
  State<MoonlitelyLogoNameWidget> createState() =>
      _MoonlitelyLogoNameWidgetState();
}

class _MoonlitelyLogoNameWidgetState extends State<MoonlitelyLogoNameWidget> {
  late MoonlitelyLogoNameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoonlitelyLogoNameModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          0.0,
          valueOrDefault<double>(
            widget.topPadding.toDouble(),
            0.0,
          ),
          0.0,
          0.0),
      child: Container(
        width: 325.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).transparent,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              0.0,
              valueOrDefault<double>(
                widget.topPadding.toDouble(),
                0.0,
              ),
              0.0,
              0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/Color_logo_-_no_background.svg',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
