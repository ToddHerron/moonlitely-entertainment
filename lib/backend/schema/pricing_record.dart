import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PricingRecord extends FirestoreRecord {
  PricingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userType" field.
  UserType? _userType;
  UserType? get userType => _userType;
  bool hasUserType() => _userType != null;

  // "plans" field.
  List<PlanStruct>? _plans;
  List<PlanStruct> get plans => _plans ?? const [];
  bool hasPlans() => _plans != null;

  // "translations" field.
  List<TranslationsStruct>? _translations;
  List<TranslationsStruct> get translations => _translations ?? const [];
  bool hasTranslations() => _translations != null;

  void _initializeFields() {
    _userType = deserializeEnum<UserType>(snapshotData['userType']);
    _plans = getStructList(
      snapshotData['plans'],
      PlanStruct.fromMap,
    );
    _translations = getStructList(
      snapshotData['translations'],
      TranslationsStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pricing');

  static Stream<PricingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PricingRecord.fromSnapshot(s));

  static Future<PricingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PricingRecord.fromSnapshot(s));

  static PricingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PricingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PricingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PricingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PricingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PricingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPricingRecordData({
  UserType? userType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userType': userType,
    }.withoutNulls,
  );

  return firestoreData;
}

class PricingRecordDocumentEquality implements Equality<PricingRecord> {
  const PricingRecordDocumentEquality();

  @override
  bool equals(PricingRecord? e1, PricingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userType == e2?.userType &&
        listEquality.equals(e1?.plans, e2?.plans) &&
        listEquality.equals(e1?.translations, e2?.translations);
  }

  @override
  int hash(PricingRecord? e) =>
      const ListEquality().hash([e?.userType, e?.plans, e?.translations]);

  @override
  bool isValidKey(Object? o) => o is PricingRecord;
}
