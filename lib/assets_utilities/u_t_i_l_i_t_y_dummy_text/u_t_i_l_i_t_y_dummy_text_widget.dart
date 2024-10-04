import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'u_t_i_l_i_t_y_dummy_text_model.dart';
export 'u_t_i_l_i_t_y_dummy_text_model.dart';

class UTILITYDummyTextWidget extends StatefulWidget {
  const UTILITYDummyTextWidget({super.key});

  @override
  State<UTILITYDummyTextWidget> createState() => _UTILITYDummyTextWidgetState();
}

class _UTILITYDummyTextWidgetState extends State<UTILITYDummyTextWidget> {
  late UTILITYDummyTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UTILITYDummyTextModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      FFLocalizations.of(context).getText(
        '8ey6b09a' /* Boisterous did gentleman think... */,
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter',
            letterSpacing: 0.0,
          ),
    );
  }
}
