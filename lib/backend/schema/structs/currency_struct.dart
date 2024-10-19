// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CurrencyStruct extends FFFirebaseStruct {
  CurrencyStruct({
    CurrencyCode? currencyCode,
    String? currencySymbol,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _currencyCode = currencyCode,
        _currencySymbol = currencySymbol,
        super(firestoreUtilData);

  // "currencyCode" field.
  CurrencyCode? _currencyCode;
  CurrencyCode get currencyCode => _currencyCode ?? CurrencyCode.CAD;
  set currencyCode(CurrencyCode? val) => _currencyCode = val;

  bool hasCurrencyCode() => _currencyCode != null;

  // "currencySymbol" field.
  String? _currencySymbol;
  String get currencySymbol => _currencySymbol ?? '\$';
  set currencySymbol(String? val) => _currencySymbol = val;

  bool hasCurrencySymbol() => _currencySymbol != null;

  static CurrencyStruct fromMap(Map<String, dynamic> data) => CurrencyStruct(
        currencyCode: deserializeEnum<CurrencyCode>(data['currencyCode']),
        currencySymbol: data['currencySymbol'] as String?,
      );

  static CurrencyStruct? maybeFromMap(dynamic data) =>
      data is Map ? CurrencyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'currencyCode': _currencyCode?.serialize(),
        'currencySymbol': _currencySymbol,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'currencyCode': serializeParam(
          _currencyCode,
          ParamType.Enum,
        ),
        'currencySymbol': serializeParam(
          _currencySymbol,
          ParamType.String,
        ),
      }.withoutNulls;

  static CurrencyStruct fromSerializableMap(Map<String, dynamic> data) =>
      CurrencyStruct(
        currencyCode: deserializeParam<CurrencyCode>(
          data['currencyCode'],
          ParamType.Enum,
          false,
        ),
        currencySymbol: deserializeParam(
          data['currencySymbol'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CurrencyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CurrencyStruct &&
        currencyCode == other.currencyCode &&
        currencySymbol == other.currencySymbol;
  }

  @override
  int get hashCode => const ListEquality().hash([currencyCode, currencySymbol]);
}

CurrencyStruct createCurrencyStruct({
  CurrencyCode? currencyCode,
  String? currencySymbol,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CurrencyStruct(
      currencyCode: currencyCode,
      currencySymbol: currencySymbol,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CurrencyStruct? updateCurrencyStruct(
  CurrencyStruct? currency, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    currency
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCurrencyStructData(
  Map<String, dynamic> firestoreData,
  CurrencyStruct? currency,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (currency == null) {
    return;
  }
  if (currency.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && currency.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final currencyData = getCurrencyFirestoreData(currency, forFieldValue);
  final nestedData = currencyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = currency.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCurrencyFirestoreData(
  CurrencyStruct? currency, [
  bool forFieldValue = false,
]) {
  if (currency == null) {
    return {};
  }
  final firestoreData = mapToFirestore(currency.toMap());

  // Add any Firestore field values
  currency.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCurrencyListFirestoreData(
  List<CurrencyStruct>? currencys,
) =>
    currencys?.map((e) => getCurrencyFirestoreData(e, true)).toList() ?? [];
