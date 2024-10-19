// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LanguageNameLocalizedStruct extends FFFirebaseStruct {
  LanguageNameLocalizedStruct({
    String? languageCode,
    List<String>? languageName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _languageCode = languageCode,
        _languageName = languageName,
        super(firestoreUtilData);

  // "languageCode" field.
  String? _languageCode;
  String get languageCode => _languageCode ?? '';
  set languageCode(String? val) => _languageCode = val;

  bool hasLanguageCode() => _languageCode != null;

  // "languageName" field.
  List<String>? _languageName;
  List<String> get languageName => _languageName ?? const [];
  set languageName(List<String>? val) => _languageName = val;

  void updateLanguageName(Function(List<String>) updateFn) {
    updateFn(_languageName ??= []);
  }

  bool hasLanguageName() => _languageName != null;

  static LanguageNameLocalizedStruct fromMap(Map<String, dynamic> data) =>
      LanguageNameLocalizedStruct(
        languageCode: data['languageCode'] as String?,
        languageName: getDataList(data['languageName']),
      );

  static LanguageNameLocalizedStruct? maybeFromMap(dynamic data) => data is Map
      ? LanguageNameLocalizedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'languageCode': _languageCode,
        'languageName': _languageName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'languageCode': serializeParam(
          _languageCode,
          ParamType.String,
        ),
        'languageName': serializeParam(
          _languageName,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static LanguageNameLocalizedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LanguageNameLocalizedStruct(
        languageCode: deserializeParam(
          data['languageCode'],
          ParamType.String,
          false,
        ),
        languageName: deserializeParam<String>(
          data['languageName'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'LanguageNameLocalizedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LanguageNameLocalizedStruct &&
        languageCode == other.languageCode &&
        listEquality.equals(languageName, other.languageName);
  }

  @override
  int get hashCode => const ListEquality().hash([languageCode, languageName]);
}

LanguageNameLocalizedStruct createLanguageNameLocalizedStruct({
  String? languageCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LanguageNameLocalizedStruct(
      languageCode: languageCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LanguageNameLocalizedStruct? updateLanguageNameLocalizedStruct(
  LanguageNameLocalizedStruct? languageNameLocalized, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    languageNameLocalized
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLanguageNameLocalizedStructData(
  Map<String, dynamic> firestoreData,
  LanguageNameLocalizedStruct? languageNameLocalized,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (languageNameLocalized == null) {
    return;
  }
  if (languageNameLocalized.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      languageNameLocalized.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final languageNameLocalizedData = getLanguageNameLocalizedFirestoreData(
      languageNameLocalized, forFieldValue);
  final nestedData =
      languageNameLocalizedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      languageNameLocalized.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLanguageNameLocalizedFirestoreData(
  LanguageNameLocalizedStruct? languageNameLocalized, [
  bool forFieldValue = false,
]) {
  if (languageNameLocalized == null) {
    return {};
  }
  final firestoreData = mapToFirestore(languageNameLocalized.toMap());

  // Add any Firestore field values
  languageNameLocalized.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLanguageNameLocalizedListFirestoreData(
  List<LanguageNameLocalizedStruct>? languageNameLocalizeds,
) =>
    languageNameLocalizeds
        ?.map((e) => getLanguageNameLocalizedFirestoreData(e, true))
        .toList() ??
    [];
