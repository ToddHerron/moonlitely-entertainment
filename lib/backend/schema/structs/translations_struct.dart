// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TranslationsStruct extends FFFirebaseStruct {
  TranslationsStruct({
    String? languageCode,
    List<TranslationStruct>? translations,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _languageCode = languageCode,
        _translations = translations,
        super(firestoreUtilData);

  // "languageCode" field.
  String? _languageCode;
  String get languageCode => _languageCode ?? '';
  set languageCode(String? val) => _languageCode = val;

  bool hasLanguageCode() => _languageCode != null;

  // "translations" field.
  List<TranslationStruct>? _translations;
  List<TranslationStruct> get translations => _translations ?? const [];
  set translations(List<TranslationStruct>? val) => _translations = val;

  void updateTranslations(Function(List<TranslationStruct>) updateFn) {
    updateFn(_translations ??= []);
  }

  bool hasTranslations() => _translations != null;

  static TranslationsStruct fromMap(Map<String, dynamic> data) =>
      TranslationsStruct(
        languageCode: data['languageCode'] as String?,
        translations: getStructList(
          data['translations'],
          TranslationStruct.fromMap,
        ),
      );

  static TranslationsStruct? maybeFromMap(dynamic data) => data is Map
      ? TranslationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'languageCode': _languageCode,
        'translations': _translations?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'languageCode': serializeParam(
          _languageCode,
          ParamType.String,
        ),
        'translations': serializeParam(
          _translations,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static TranslationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TranslationsStruct(
        languageCode: deserializeParam(
          data['languageCode'],
          ParamType.String,
          false,
        ),
        translations: deserializeStructParam<TranslationStruct>(
          data['translations'],
          ParamType.DataStruct,
          true,
          structBuilder: TranslationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TranslationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TranslationsStruct &&
        languageCode == other.languageCode &&
        listEquality.equals(translations, other.translations);
  }

  @override
  int get hashCode => const ListEquality().hash([languageCode, translations]);
}

TranslationsStruct createTranslationsStruct({
  String? languageCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TranslationsStruct(
      languageCode: languageCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TranslationsStruct? updateTranslationsStruct(
  TranslationsStruct? translationsStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    translationsStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTranslationsStructData(
  Map<String, dynamic> firestoreData,
  TranslationsStruct? translationsStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (translationsStruct == null) {
    return;
  }
  if (translationsStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && translationsStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final translationsStructData =
      getTranslationsFirestoreData(translationsStruct, forFieldValue);
  final nestedData =
      translationsStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      translationsStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTranslationsFirestoreData(
  TranslationsStruct? translationsStruct, [
  bool forFieldValue = false,
]) {
  if (translationsStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(translationsStruct.toMap());

  // Add any Firestore field values
  translationsStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTranslationsListFirestoreData(
  List<TranslationsStruct>? translationsStructs,
) =>
    translationsStructs
        ?.map((e) => getTranslationsFirestoreData(e, true))
        .toList() ??
    [];
