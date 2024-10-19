// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FeatureNameStruct extends FFFirebaseStruct {
  FeatureNameStruct({
    String? languageCode,
    String? featureNameLocalized,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _languageCode = languageCode,
        _featureNameLocalized = featureNameLocalized,
        super(firestoreUtilData);

  // "languageCode" field.
  String? _languageCode;
  String get languageCode => _languageCode ?? '';
  set languageCode(String? val) => _languageCode = val;

  bool hasLanguageCode() => _languageCode != null;

  // "featureNameLocalized" field.
  String? _featureNameLocalized;
  String get featureNameLocalized => _featureNameLocalized ?? '';
  set featureNameLocalized(String? val) => _featureNameLocalized = val;

  bool hasFeatureNameLocalized() => _featureNameLocalized != null;

  static FeatureNameStruct fromMap(Map<String, dynamic> data) =>
      FeatureNameStruct(
        languageCode: data['languageCode'] as String?,
        featureNameLocalized: data['featureNameLocalized'] as String?,
      );

  static FeatureNameStruct? maybeFromMap(dynamic data) => data is Map
      ? FeatureNameStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'languageCode': _languageCode,
        'featureNameLocalized': _featureNameLocalized,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'languageCode': serializeParam(
          _languageCode,
          ParamType.String,
        ),
        'featureNameLocalized': serializeParam(
          _featureNameLocalized,
          ParamType.String,
        ),
      }.withoutNulls;

  static FeatureNameStruct fromSerializableMap(Map<String, dynamic> data) =>
      FeatureNameStruct(
        languageCode: deserializeParam(
          data['languageCode'],
          ParamType.String,
          false,
        ),
        featureNameLocalized: deserializeParam(
          data['featureNameLocalized'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FeatureNameStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FeatureNameStruct &&
        languageCode == other.languageCode &&
        featureNameLocalized == other.featureNameLocalized;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([languageCode, featureNameLocalized]);
}

FeatureNameStruct createFeatureNameStruct({
  String? languageCode,
  String? featureNameLocalized,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FeatureNameStruct(
      languageCode: languageCode,
      featureNameLocalized: featureNameLocalized,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FeatureNameStruct? updateFeatureNameStruct(
  FeatureNameStruct? featureName, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    featureName
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFeatureNameStructData(
  Map<String, dynamic> firestoreData,
  FeatureNameStruct? featureName,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (featureName == null) {
    return;
  }
  if (featureName.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && featureName.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final featureNameData =
      getFeatureNameFirestoreData(featureName, forFieldValue);
  final nestedData =
      featureNameData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = featureName.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFeatureNameFirestoreData(
  FeatureNameStruct? featureName, [
  bool forFieldValue = false,
]) {
  if (featureName == null) {
    return {};
  }
  final firestoreData = mapToFirestore(featureName.toMap());

  // Add any Firestore field values
  featureName.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFeatureNameListFirestoreData(
  List<FeatureNameStruct>? featureNames,
) =>
    featureNames?.map((e) => getFeatureNameFirestoreData(e, true)).toList() ??
    [];
