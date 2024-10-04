import '/components/email_confirmation_count_down_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sign_in_modal_widget.dart' show SignInModalWidget;
import 'package:flutter/material.dart';

class SignInModalModel extends FlutterFlowModel<SignInModalWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zla7z0gm' /* Email address is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rndynwav' /* Password is required */,
      );
    }

    return null;
  }

  // Model for EmailConfirmationCountDown component.
  late EmailConfirmationCountDownModel emailConfirmationCountDownModel;

  @override
  void initState(BuildContext context) {
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    emailConfirmationCountDownModel =
        createModel(context, () => EmailConfirmationCountDownModel());
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    emailConfirmationCountDownModel.dispose();
  }
}
