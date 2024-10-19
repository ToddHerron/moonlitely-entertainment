import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_container_model.dart';
export 'empty_container_model.dart';

class EmptyContainerWidget extends StatefulWidget {
  const EmptyContainerWidget({super.key});

  @override
  State<EmptyContainerWidget> createState() => _EmptyContainerWidgetState();
}

class _EmptyContainerWidgetState extends State<EmptyContainerWidget> {
  late EmptyContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyContainerModel());

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
      width: 0.0,
      height: 0.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
    );
  }
}
