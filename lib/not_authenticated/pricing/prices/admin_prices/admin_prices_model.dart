import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_prices_widget.dart' show AdminPricesWidget;
import 'package:flutter/material.dart';

class AdminPricesModel extends FlutterFlowModel<AdminPricesWidget> {
  ///  Local state fields for this component.

  List<PriceStruct> prices = [];
  void addToPrices(PriceStruct item) => prices.add(item);
  void removeFromPrices(PriceStruct item) => prices.remove(item);
  void removeAtIndexFromPrices(int index) => prices.removeAt(index);
  void insertAtIndexInPrices(int index, PriceStruct item) =>
      prices.insert(index, item);
  void updatePricesAtIndex(int index, Function(PriceStruct) updateFn) =>
      prices[index] = updateFn(prices[index]);

  List<int> deletePricesIndexList = [];
  void addToDeletePricesIndexList(int item) => deletePricesIndexList.add(item);
  void removeFromDeletePricesIndexList(int item) =>
      deletePricesIndexList.remove(item);
  void removeAtIndexFromDeletePricesIndexList(int index) =>
      deletePricesIndexList.removeAt(index);
  void insertAtIndexInDeletePricesIndexList(int index, int item) =>
      deletePricesIndexList.insert(index, item);
  void updateDeletePricesIndexListAtIndex(int index, Function(int) updateFn) =>
      deletePricesIndexList[index] = updateFn(deletePricesIndexList[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for DataTable_Prices widget.
  final dataTablePricesController =
      FlutterFlowDataTableController<PriceStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dataTablePricesController.dispose();
  }
}
