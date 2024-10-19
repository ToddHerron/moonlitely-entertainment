// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PriceStruct extends FFFirebaseStruct {
  PriceStruct({
    String? billingCycle,
    double? amount,
    CurrencyStruct? currency,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _billingCycle = billingCycle,
        _amount = amount,
        _currency = currency,
        super(firestoreUtilData);

  // "billingCycle" field.
  String? _billingCycle;
  String get billingCycle => _billingCycle ?? '';
  set billingCycle(String? val) => _billingCycle = val;

  bool hasBillingCycle() => _billingCycle != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "currency" field.
  CurrencyStruct? _currency;
  CurrencyStruct get currency => _currency ?? CurrencyStruct();
  set currency(CurrencyStruct? val) => _currency = val;

  void updateCurrency(Function(CurrencyStruct) updateFn) {
    updateFn(_currency ??= CurrencyStruct());
  }

  bool hasCurrency() => _currency != null;

  static PriceStruct fromMap(Map<String, dynamic> data) => PriceStruct(
        billingCycle: data['billingCycle'] as String?,
        amount: castToType<double>(data['amount']),
        currency: CurrencyStruct.maybeFromMap(data['currency']),
      );

  static PriceStruct? maybeFromMap(dynamic data) =>
      data is Map ? PriceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'billingCycle': _billingCycle,
        'amount': _amount,
        'currency': _currency?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'billingCycle': serializeParam(
          _billingCycle,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PriceStruct fromSerializableMap(Map<String, dynamic> data) =>
      PriceStruct(
        billingCycle: deserializeParam(
          data['billingCycle'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        currency: deserializeStructParam(
          data['currency'],
          ParamType.DataStruct,
          false,
          structBuilder: CurrencyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PriceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PriceStruct &&
        billingCycle == other.billingCycle &&
        amount == other.amount &&
        currency == other.currency;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([billingCycle, amount, currency]);
}

PriceStruct createPriceStruct({
  String? billingCycle,
  double? amount,
  CurrencyStruct? currency,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PriceStruct(
      billingCycle: billingCycle,
      amount: amount,
      currency: currency ?? (clearUnsetFields ? CurrencyStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PriceStruct? updatePriceStruct(
  PriceStruct? price, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    price
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPriceStructData(
  Map<String, dynamic> firestoreData,
  PriceStruct? price,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (price == null) {
    return;
  }
  if (price.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && price.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final priceData = getPriceFirestoreData(price, forFieldValue);
  final nestedData = priceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = price.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPriceFirestoreData(
  PriceStruct? price, [
  bool forFieldValue = false,
]) {
  if (price == null) {
    return {};
  }
  final firestoreData = mapToFirestore(price.toMap());

  // Handle nested data for "currency" field.
  addCurrencyStructData(
    firestoreData,
    price.hasCurrency() ? price.currency : null,
    'currency',
    forFieldValue,
  );

  // Add any Firestore field values
  price.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPriceListFirestoreData(
  List<PriceStruct>? prices,
) =>
    prices?.map((e) => getPriceFirestoreData(e, true)).toList() ?? [];
