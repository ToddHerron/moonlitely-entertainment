import '/flutter_flow/flutter_flow_util.dart';
import 'admin_prices_data_table_price_widget.dart'
    show AdminPricesDataTablePriceWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AdminPricesDataTablePriceModel
    extends FlutterFlowModel<AdminPricesDataTablePriceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField_PriceAmount widget.
  FocusNode? textFieldPriceAmountFocusNode;
  TextEditingController? textFieldPriceAmountTextController;
  final textFieldPriceAmountMask = MaskTextInputFormatter(mask: '###.##');
  String? Function(BuildContext, String?)?
      textFieldPriceAmountTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldPriceAmountFocusNode?.dispose();
    textFieldPriceAmountTextController?.dispose();
  }
}
