// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FeatureValueStruct extends FFFirebaseStruct {
  FeatureValueStruct({
    String? featureValueLocalized,
    String? languageCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _featureValueLocalized = featureValueLocalized,
        _languageCode = languageCode,
        super(firestoreUtilData);

  // "featureValueLocalized" field.
  String? _featureValueLocalized;
  String get featureValueLocalized => _featureValueLocalized ?? '';
  set featureValueLocalized(String? val) => _featureValueLocalized = val;

  bool hasFeatureValueLocalized() => _featureValueLocalized != null;

  // "languageCode" field.
  String? _languageCode;
  String get languageCode => _languageCode ?? '';
  set languageCode(String? val) => _languageCode = val;

  bool hasLanguageCode() => _languageCode != null;

  static FeatureValueStruct fromMap(Map<String, dynamic> data) =>
      FeatureValueStruct(
        featureValueLocalized: data['featureValueLocalized'] as String?,
        languageCode: data['languageCode'] as String?,
      );

  static FeatureValueStruct? maybeFromMap(dynamic data) => data is Map
      ? FeatureValueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'featureValueLocalized': _featureValueLocalized,
        'languageCode': _languageCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'featureValueLocalized': serializeParam(
          _featureValueLocalized,
          ParamType.String,
        ),
        'languageCode': serializeParam(
          _languageCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static FeatureValueStruct fromSerializableMap(Map<String, dynamic> data) =>
      FeatureValueStruct(
        featureValueLocalized: deserializeParam(
          data['featureValueLocalized'],
          ParamType.String,
          false,
        ),
        languageCode: deserializeParam(
          data['languageCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FeatureValueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FeatureValueStruct &&
        featureValueLocalized == other.featureValueLocalized &&
        languageCode == other.languageCode;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([featureValueLocalized, languageCode]);
}

FeatureValueStruct createFeatureValueStruct({
  String? featureValueLocalized,
  String? languageCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FeatureValueStruct(
      featureValueLocalized: featureValueLocalized,
      languageCode: languageCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FeatureValueStruct? updateFeatureValueStruct(
  FeatureValueStruct? featureValue, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    featureValue
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFeatureValueStructData(
  Map<String, dynamic> firestoreData,
  FeatureValueStruct? featureValue,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (featureValue == null) {
    return;
  }
  if (featureValue.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && featureValue.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final featureValueData =
      getFeatureValueFirestoreData(featureValue, forFieldValue);
  final nestedData =
      featureValueData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = featureValue.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFeatureValueFirestoreData(
  FeatureValueStruct? featureValue, [
  bool forFieldValue = false,
]) {
  if (featureValue == null) {
    return {};
  }
  final firestoreData = mapToFirestore(featureValue.toMap());

  // Add any Firestore field values
  featureValue.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFeatureValueListFirestoreData(
  List<FeatureValueStruct>? featureValues,
) =>
    featureValues?.map((e) => getFeatureValueFirestoreData(e, true)).toList() ??
    [];
