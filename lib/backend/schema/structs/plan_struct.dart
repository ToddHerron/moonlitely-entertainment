// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlanStruct extends FFFirebaseStruct {
  PlanStruct({
    String? planId,
    List<PlanNameStruct>? planNames,
    List<PriceStruct>? prices,
    List<FeatureStruct>? features,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _planId = planId,
        _planNames = planNames,
        _prices = prices,
        _features = features,
        super(firestoreUtilData);

  // "planId" field.
  String? _planId;
  String get planId => _planId ?? '';
  set planId(String? val) => _planId = val;

  bool hasPlanId() => _planId != null;

  // "planNames" field.
  List<PlanNameStruct>? _planNames;
  List<PlanNameStruct> get planNames => _planNames ?? const [];
  set planNames(List<PlanNameStruct>? val) => _planNames = val;

  void updatePlanNames(Function(List<PlanNameStruct>) updateFn) {
    updateFn(_planNames ??= []);
  }

  bool hasPlanNames() => _planNames != null;

  // "prices" field.
  List<PriceStruct>? _prices;
  List<PriceStruct> get prices => _prices ?? const [];
  set prices(List<PriceStruct>? val) => _prices = val;

  void updatePrices(Function(List<PriceStruct>) updateFn) {
    updateFn(_prices ??= []);
  }

  bool hasPrices() => _prices != null;

  // "features" field.
  List<FeatureStruct>? _features;
  List<FeatureStruct> get features => _features ?? const [];
  set features(List<FeatureStruct>? val) => _features = val;

  void updateFeatures(Function(List<FeatureStruct>) updateFn) {
    updateFn(_features ??= []);
  }

  bool hasFeatures() => _features != null;

  static PlanStruct fromMap(Map<String, dynamic> data) => PlanStruct(
        planId: data['planId'] as String?,
        planNames: getStructList(
          data['planNames'],
          PlanNameStruct.fromMap,
        ),
        prices: getStructList(
          data['prices'],
          PriceStruct.fromMap,
        ),
        features: getStructList(
          data['features'],
          FeatureStruct.fromMap,
        ),
      );

  static PlanStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlanStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'planId': _planId,
        'planNames': _planNames?.map((e) => e.toMap()).toList(),
        'prices': _prices?.map((e) => e.toMap()).toList(),
        'features': _features?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'planId': serializeParam(
          _planId,
          ParamType.String,
        ),
        'planNames': serializeParam(
          _planNames,
          ParamType.DataStruct,
          isList: true,
        ),
        'prices': serializeParam(
          _prices,
          ParamType.DataStruct,
          isList: true,
        ),
        'features': serializeParam(
          _features,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static PlanStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlanStruct(
        planId: deserializeParam(
          data['planId'],
          ParamType.String,
          false,
        ),
        planNames: deserializeStructParam<PlanNameStruct>(
          data['planNames'],
          ParamType.DataStruct,
          true,
          structBuilder: PlanNameStruct.fromSerializableMap,
        ),
        prices: deserializeStructParam<PriceStruct>(
          data['prices'],
          ParamType.DataStruct,
          true,
          structBuilder: PriceStruct.fromSerializableMap,
        ),
        features: deserializeStructParam<FeatureStruct>(
          data['features'],
          ParamType.DataStruct,
          true,
          structBuilder: FeatureStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PlanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PlanStruct &&
        planId == other.planId &&
        listEquality.equals(planNames, other.planNames) &&
        listEquality.equals(prices, other.prices) &&
        listEquality.equals(features, other.features);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([planId, planNames, prices, features]);
}

PlanStruct createPlanStruct({
  String? planId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlanStruct(
      planId: planId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlanStruct? updatePlanStruct(
  PlanStruct? plan, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    plan
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlanStructData(
  Map<String, dynamic> firestoreData,
  PlanStruct? plan,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (plan == null) {
    return;
  }
  if (plan.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && plan.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final planData = getPlanFirestoreData(plan, forFieldValue);
  final nestedData = planData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = plan.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlanFirestoreData(
  PlanStruct? plan, [
  bool forFieldValue = false,
]) {
  if (plan == null) {
    return {};
  }
  final firestoreData = mapToFirestore(plan.toMap());

  // Add any Firestore field values
  plan.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlanListFirestoreData(
  List<PlanStruct>? plans,
) =>
    plans?.map((e) => getPlanFirestoreData(e, true)).toList() ?? [];
