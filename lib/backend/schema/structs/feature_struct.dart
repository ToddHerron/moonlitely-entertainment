// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeatureStruct extends FFFirebaseStruct {
  FeatureStruct({
    String? featureId,
    List<FeatureNameStruct>? featureNames,
    List<FeatureValueStruct>? featureValues,
    int? order,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _featureId = featureId,
        _featureNames = featureNames,
        _featureValues = featureValues,
        _order = order,
        super(firestoreUtilData);

  // "featureId" field.
  String? _featureId;
  String get featureId => _featureId ?? '';
  set featureId(String? val) => _featureId = val;

  bool hasFeatureId() => _featureId != null;

  // "featureNames" field.
  List<FeatureNameStruct>? _featureNames;
  List<FeatureNameStruct> get featureNames => _featureNames ?? const [];
  set featureNames(List<FeatureNameStruct>? val) => _featureNames = val;

  void updateFeatureNames(Function(List<FeatureNameStruct>) updateFn) {
    updateFn(_featureNames ??= []);
  }

  bool hasFeatureNames() => _featureNames != null;

  // "featureValues" field.
  List<FeatureValueStruct>? _featureValues;
  List<FeatureValueStruct> get featureValues => _featureValues ?? const [];
  set featureValues(List<FeatureValueStruct>? val) => _featureValues = val;

  void updateFeatureValues(Function(List<FeatureValueStruct>) updateFn) {
    updateFn(_featureValues ??= []);
  }

  bool hasFeatureValues() => _featureValues != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

  static FeatureStruct fromMap(Map<String, dynamic> data) => FeatureStruct(
        featureId: data['featureId'] as String?,
        featureNames: getStructList(
          data['featureNames'],
          FeatureNameStruct.fromMap,
        ),
        featureValues: getStructList(
          data['featureValues'],
          FeatureValueStruct.fromMap,
        ),
        order: castToType<int>(data['order']),
      );

  static FeatureStruct? maybeFromMap(dynamic data) =>
      data is Map ? FeatureStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'featureId': _featureId,
        'featureNames': _featureNames?.map((e) => e.toMap()).toList(),
        'featureValues': _featureValues?.map((e) => e.toMap()).toList(),
        'order': _order,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'featureId': serializeParam(
          _featureId,
          ParamType.String,
        ),
        'featureNames': serializeParam(
          _featureNames,
          ParamType.DataStruct,
          isList: true,
        ),
        'featureValues': serializeParam(
          _featureValues,
          ParamType.DataStruct,
          isList: true,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
      }.withoutNulls;

  static FeatureStruct fromSerializableMap(Map<String, dynamic> data) =>
      FeatureStruct(
        featureId: deserializeParam(
          data['featureId'],
          ParamType.String,
          false,
        ),
        featureNames: deserializeStructParam<FeatureNameStruct>(
          data['featureNames'],
          ParamType.DataStruct,
          true,
          structBuilder: FeatureNameStruct.fromSerializableMap,
        ),
        featureValues: deserializeStructParam<FeatureValueStruct>(
          data['featureValues'],
          ParamType.DataStruct,
          true,
          structBuilder: FeatureValueStruct.fromSerializableMap,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'FeatureStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FeatureStruct &&
        featureId == other.featureId &&
        listEquality.equals(featureNames, other.featureNames) &&
        listEquality.equals(featureValues, other.featureValues) &&
        order == other.order;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([featureId, featureNames, featureValues, order]);
}

FeatureStruct createFeatureStruct({
  String? featureId,
  int? order,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FeatureStruct(
      featureId: featureId,
      order: order,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FeatureStruct? updateFeatureStruct(
  FeatureStruct? feature, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    feature
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFeatureStructData(
  Map<String, dynamic> firestoreData,
  FeatureStruct? feature,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (feature == null) {
    return;
  }
  if (feature.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && feature.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final featureData = getFeatureFirestoreData(feature, forFieldValue);
  final nestedData = featureData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = feature.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFeatureFirestoreData(
  FeatureStruct? feature, [
  bool forFieldValue = false,
]) {
  if (feature == null) {
    return {};
  }
  final firestoreData = mapToFirestore(feature.toMap());

  // Add any Firestore field values
  feature.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFeatureListFirestoreData(
  List<FeatureStruct>? features,
) =>
    features?.map((e) => getFeatureFirestoreData(e, true)).toList() ?? [];
