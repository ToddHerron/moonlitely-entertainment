// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TranslationStruct extends FFFirebaseStruct {
  TranslationStruct({
    String? translationId,
    String? translationValueLocalized,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _translationId = translationId,
        _translationValueLocalized = translationValueLocalized,
        super(firestoreUtilData);

  // "translationId" field.
  String? _translationId;
  String get translationId => _translationId ?? '';
  set translationId(String? val) => _translationId = val;

  bool hasTranslationId() => _translationId != null;

  // "translationValueLocalized" field.
  String? _translationValueLocalized;
  String get translationValueLocalized => _translationValueLocalized ?? '';
  set translationValueLocalized(String? val) =>
      _translationValueLocalized = val;

  bool hasTranslationValueLocalized() => _translationValueLocalized != null;

  static TranslationStruct fromMap(Map<String, dynamic> data) =>
      TranslationStruct(
        translationId: data['translationId'] as String?,
        translationValueLocalized: data['translationValueLocalized'] as String?,
      );

  static TranslationStruct? maybeFromMap(dynamic data) => data is Map
      ? TranslationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'translationId': _translationId,
        'translationValueLocalized': _translationValueLocalized,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'translationId': serializeParam(
          _translationId,
          ParamType.String,
        ),
        'translationValueLocalized': serializeParam(
          _translationValueLocalized,
          ParamType.String,
        ),
      }.withoutNulls;

  static TranslationStruct fromSerializableMap(Map<String, dynamic> data) =>
      TranslationStruct(
        translationId: deserializeParam(
          data['translationId'],
          ParamType.String,
          false,
        ),
        translationValueLocalized: deserializeParam(
          data['translationValueLocalized'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TranslationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TranslationStruct &&
        translationId == other.translationId &&
        translationValueLocalized == other.translationValueLocalized;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([translationId, translationValueLocalized]);
}

TranslationStruct createTranslationStruct({
  String? translationId,
  String? translationValueLocalized,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TranslationStruct(
      translationId: translationId,
      translationValueLocalized: translationValueLocalized,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TranslationStruct? updateTranslationStruct(
  TranslationStruct? translation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    translation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTranslationStructData(
  Map<String, dynamic> firestoreData,
  TranslationStruct? translation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (translation == null) {
    return;
  }
  if (translation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && translation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final translationData =
      getTranslationFirestoreData(translation, forFieldValue);
  final nestedData =
      translationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = translation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTranslationFirestoreData(
  TranslationStruct? translation, [
  bool forFieldValue = false,
]) {
  if (translation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(translation.toMap());

  // Add any Firestore field values
  translation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTranslationListFirestoreData(
  List<TranslationStruct>? translations,
) =>
    translations?.map((e) => getTranslationFirestoreData(e, true)).toList() ??
    [];
