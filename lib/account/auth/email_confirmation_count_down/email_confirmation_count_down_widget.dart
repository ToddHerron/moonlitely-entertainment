import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'email_confirmation_count_down_model.dart';
export 'email_confirmation_count_down_model.dart';

class EmailConfirmationCountDownWidget extends StatefulWidget {
  const EmailConfirmationCountDownWidget({super.key});

  @override
  State<EmailConfirmationCountDownWidget> createState() =>
      _EmailConfirmationCountDownWidgetState();
}

class _EmailConfirmationCountDownWidgetState
    extends State<EmailConfirmationCountDownWidget> {
  late EmailConfirmationCountDownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailConfirmationCountDownModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 160.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            FFAppState().signUpEmailVerificationLoopTImer.toString(),
            style: FlutterFlowTheme.of(context).displayMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'h6u474yr' /* Please check your email */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(const SizedBox(height: 12.0)),
      ),
    );
  }
}
