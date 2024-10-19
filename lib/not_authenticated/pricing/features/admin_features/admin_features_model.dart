import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_features_widget.dart' show AdminFeaturesWidget;
import 'package:flutter/material.dart';

class AdminFeaturesModel extends FlutterFlowModel<AdminFeaturesWidget> {
  ///  Local state fields for this component.

  List<FeatureStruct> features = [];
  void addToFeatures(FeatureStruct item) => features.add(item);
  void removeFromFeatures(FeatureStruct item) => features.remove(item);
  void removeAtIndexFromFeatures(int index) => features.removeAt(index);
  void insertAtIndexInFeatures(int index, FeatureStruct item) =>
      features.insert(index, item);
  void updateFeaturesAtIndex(int index, Function(FeatureStruct) updateFn) =>
      features[index] = updateFn(features[index]);

  List<int> deleteFeaturesIndexList = [];
  void addToDeleteFeaturesIndexList(int item) =>
      deleteFeaturesIndexList.add(item);
  void removeFromDeleteFeaturesIndexList(int item) =>
      deleteFeaturesIndexList.remove(item);
  void removeAtIndexFromDeleteFeaturesIndexList(int index) =>
      deleteFeaturesIndexList.removeAt(index);
  void insertAtIndexInDeleteFeaturesIndexList(int index, int item) =>
      deleteFeaturesIndexList.insert(index, item);
  void updateDeleteFeaturesIndexListAtIndex(
          int index, Function(int) updateFn) =>
      deleteFeaturesIndexList[index] = updateFn(deleteFeaturesIndexList[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<FeatureStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
