import 'package:collection/collection.dart';

enum SignUpSteps {
  emailPassword,
  userType,
  preferences,
}

enum UserType {
  audience,
  performer,
  producer,
  venue,
  contentcreator,
  moonlitelyadmin,
}

enum Country {
  ca,
  us,
  mx,
}

enum PlanId {
  basic,
  premium,
  custom,
}

enum CurrencyCode {
  USD,
  EUR,
  JPY,
  GBP,
  AUD,
  CAD,
  CHF,
  CNH,
  HKD,
  NZD,
  MXN,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (SignUpSteps):
      return SignUpSteps.values.deserialize(value) as T?;
    case (UserType):
      return UserType.values.deserialize(value) as T?;
    case (Country):
      return Country.values.deserialize(value) as T?;
    case (PlanId):
      return PlanId.values.deserialize(value) as T?;
    case (CurrencyCode):
      return CurrencyCode.values.deserialize(value) as T?;
    default:
      return null;
  }
}
