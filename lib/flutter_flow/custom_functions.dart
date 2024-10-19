import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String> listOfCurrencyCodes(List<CurrencyStruct> currencies) {
  // take a list of currencies and convert their enum values to string and return it as a list of strings
  return currencies
      .map((currency) => currency.currencyCode.serialize())
      .toList();
}

String convertUserTypeEnumToString(UserType userType) {
  // convert the input UserType Enum To a String
  return userType.serialize();
}

CurrencyStruct getCurrency(
  String currencyCode,
  List<CurrencyStruct> currencies,
) {
  // input a 3-character currency code string, look up in the currencies list and return the corresponding currency object whose currencyCode enum equals the input currency code string
  CurrencyCode code;
  switch (currencyCode) {
    case 'USD':
      code = CurrencyCode.USD;
      break;
    case 'EUR':
      code = CurrencyCode.EUR;
      break;
    case 'JPY':
      code = CurrencyCode.JPY;
      break;
    case 'GBP':
      code = CurrencyCode.GBP;
      break;
    case 'AUD':
      code = CurrencyCode.AUD;
      break;
    case 'CAD':
      code = CurrencyCode.CAD;
      break;
    case 'CHF':
      code = CurrencyCode.CHF;
      break;
    case 'CNH':
      code = CurrencyCode.CNH;
      break;
    case 'HKD':
      code = CurrencyCode.HKD;
      break;
    case 'NZD':
      code = CurrencyCode.NZD;
      break;
    case 'MXN':
      code = CurrencyCode.MXN;
      break;
    default:
      code = CurrencyCode.CAD;
  }

  // Look up the currency in the list of CurrencyStructs
  return currencies.firstWhere(
    (currency) => currency.currencyCode == code,
    orElse: () => CurrencyStruct(
      currencyCode: CurrencyCode.CAD,
      currencySymbol: '\$',
    ), // Default to CAD if not found
  );
}

List<FeatureValueStruct>? updateFeatureValuesList(
  FeatureValueStruct revisedFeatureValue,
  List<FeatureValueStruct>? featureValuesList,
) {
  // given a revisedFeatureValue as input, update item the featureValuesList with the same languageCode. if there is no match for with an item in the featureValuesList, add the revisedFeatureValue to the list.
  if (featureValuesList == null) {
    featureValuesList = [];
  }

  bool updated = false;

  for (var feature in featureValuesList) {
    if (feature.languageCode == revisedFeatureValue.languageCode) {
      feature.featureValueLocalized = revisedFeatureValue.featureValueLocalized;
      updated = true;
      break;
    }
  }

  if (!updated) {
    featureValuesList.add(revisedFeatureValue);
  }

  return featureValuesList;
}

List<FeatureNameStruct>? updateFeatureNamesList(
  FeatureNameStruct revisedFeatureName,
  List<FeatureNameStruct>? featureNamesList,
) {
  // given a revisedFeatureName as input, update item the featureNamesList with the same languageCode. if there is no match for with an item in the featureNamesList, add the revisedFeatureName to the list.
  if (featureNamesList == null) {
    featureNamesList = [];
  }

  bool updated = false;

  for (var feature in featureNamesList) {
    if (feature.languageCode == revisedFeatureName.languageCode) {
      feature.featureNameLocalized = revisedFeatureName.featureNameLocalized;
      updated = true;
      break;
    }
  }

  if (!updated) {
    featureNamesList.add(revisedFeatureName);
  }

  return featureNamesList;
}

UserType convertStringToUserTypeEnum(String userType) {
  // convert an userType String input to a userType enum
  return UserType.values.firstWhere(
      (e) => e.toString().split('.').last == userType.toLowerCase());
}

DocumentReference pricingDocumentReferenceFromUserType(String userType) {
  // generate a doc reference for a pricing collection document given a userType string. The format for the document references is 'pricing/userType'
  return FirebaseFirestore.instance.collection('pricing').doc(userType);
}

List<PlanNameStruct>? updatePlanNamesList(
  PlanNameStruct revisedPlanName,
  List<PlanNameStruct>? planNamesList,
) {
  // given a revisedFeatureValue as input, update item the featureValuesList with the same languageCode. if there is no match for with an item in the featureValuesList, add the revisedFeatureValue to the list.
  if (planNamesList == null) {
    planNamesList = [];
  }

  bool updated = false;

  for (var plan in planNamesList) {
    if (plan.languageCode == revisedPlanName.languageCode) {
      plan.planName = revisedPlanName.planName;
      updated = true;
      break;
    }
  }

  if (!updated) {
    planNamesList.add(revisedPlanName);
  }

  return planNamesList;
}
