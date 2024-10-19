// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PlanNameStruct extends FFFirebaseStruct {
  PlanNameStruct({
    String? languageCode,
    String? planName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _languageCode = languageCode,
        _planName = planName,
        super(firestoreUtilData);

  // "languageCode" field.
  String? _languageCode;
  String get languageCode => _languageCode ?? '';
  set languageCode(String? val) => _languageCode = val;

  bool hasLanguageCode() => _languageCode != null;

  // "planName" field.
  String? _planName;
  String get planName => _planName ?? '';
  set planName(String? val) => _planName = val;

  bool hasPlanName() => _planName != null;

  static PlanNameStruct fromMap(Map<String, dynamic> data) => PlanNameStruct(
        languageCode: data['languageCode'] as String?,
        planName: data['planName'] as String?,
      );

  static PlanNameStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlanNameStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'languageCode': _languageCode,
        'planName': _planName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'languageCode': serializeParam(
          _languageCode,
          ParamType.String,
        ),
        'planName': serializeParam(
          _planName,
          ParamType.String,
        ),
      }.withoutNulls;

  static PlanNameStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlanNameStruct(
        languageCode: deserializeParam(
          data['languageCode'],
          ParamType.String,
          false,
        ),
        planName: deserializeParam(
          data['planName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PlanNameStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlanNameStruct &&
        languageCode == other.languageCode &&
        planName == other.planName;
  }

  @override
  int get hashCode => const ListEquality().hash([languageCode, planName]);
}

PlanNameStruct createPlanNameStruct({
  String? languageCode,
  String? planName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlanNameStruct(
      languageCode: languageCode,
      planName: planName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlanNameStruct? updatePlanNameStruct(
  PlanNameStruct? planNameStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    planNameStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlanNameStructData(
  Map<String, dynamic> firestoreData,
  PlanNameStruct? planNameStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (planNameStruct == null) {
    return;
  }
  if (planNameStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && planNameStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final planNameStructData =
      getPlanNameFirestoreData(planNameStruct, forFieldValue);
  final nestedData =
      planNameStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = planNameStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlanNameFirestoreData(
  PlanNameStruct? planNameStruct, [
  bool forFieldValue = false,
]) {
  if (planNameStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(planNameStruct.toMap());

  // Add any Firestore field values
  planNameStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlanNameListFirestoreData(
  List<PlanNameStruct>? planNameStructs,
) =>
    planNameStructs?.map((e) => getPlanNameFirestoreData(e, true)).toList() ??
    [];
