import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _darkMode = await secureStorage.getBool('ff_darkMode') ?? _darkMode;
    });
    await _safeInitAsync(() async {
      _signUpStepsRemaining =
          (await secureStorage.getStringList('ff_signUpStepsRemaining'))
                  ?.map((x) => deserializeEnum<SignUpSteps>(x)!)
                  .toList() ??
              _signUpStepsRemaining;
    });
    await _safeInitAsync(() async {
      _currencies = (await secureStorage.getStringList('ff_currencies'))
              ?.map((x) {
                try {
                  return CurrencyStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _currencies;
    });
    await _safeInitAsync(() async {
      _AdminPricingPlans =
          (await secureStorage.getStringList('ff_AdminPricingPlans'))
                  ?.map((x) {
                    try {
                      return PlanStruct.fromSerializableMap(jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _AdminPricingPlans;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _darkMode = false;
  bool get darkMode => _darkMode;
  set darkMode(bool value) {
    _darkMode = value;
    secureStorage.setBool('ff_darkMode', value);
  }

  void deleteDarkMode() {
    secureStorage.delete(key: 'ff_darkMode');
  }

  int _signUpEmailVerificationLoopTImer = 60;
  int get signUpEmailVerificationLoopTImer => _signUpEmailVerificationLoopTImer;
  set signUpEmailVerificationLoopTImer(int value) {
    _signUpEmailVerificationLoopTImer = value;
  }

  bool _signUpWaitingForEmailConfirmation = false;
  bool get signUpWaitingForEmailConfirmation =>
      _signUpWaitingForEmailConfirmation;
  set signUpWaitingForEmailConfirmation(bool value) {
    _signUpWaitingForEmailConfirmation = value;
  }

  List<SignUpSteps> _signUpStepsRemaining = [
    SignUpSteps.emailPassword,
    SignUpSteps.userType,
    SignUpSteps.preferences
  ];
  List<SignUpSteps> get signUpStepsRemaining => _signUpStepsRemaining;
  set signUpStepsRemaining(List<SignUpSteps> value) {
    _signUpStepsRemaining = value;
    secureStorage.setStringList(
        'ff_signUpStepsRemaining', value.map((x) => x.serialize()).toList());
  }

  void deleteSignUpStepsRemaining() {
    secureStorage.delete(key: 'ff_signUpStepsRemaining');
  }

  void addToSignUpStepsRemaining(SignUpSteps value) {
    signUpStepsRemaining.add(value);
    secureStorage.setStringList('ff_signUpStepsRemaining',
        _signUpStepsRemaining.map((x) => x.serialize()).toList());
  }

  void removeFromSignUpStepsRemaining(SignUpSteps value) {
    signUpStepsRemaining.remove(value);
    secureStorage.setStringList('ff_signUpStepsRemaining',
        _signUpStepsRemaining.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSignUpStepsRemaining(int index) {
    signUpStepsRemaining.removeAt(index);
    secureStorage.setStringList('ff_signUpStepsRemaining',
        _signUpStepsRemaining.map((x) => x.serialize()).toList());
  }

  void updateSignUpStepsRemainingAtIndex(
    int index,
    SignUpSteps Function(SignUpSteps) updateFn,
  ) {
    signUpStepsRemaining[index] = updateFn(_signUpStepsRemaining[index]);
    secureStorage.setStringList('ff_signUpStepsRemaining',
        _signUpStepsRemaining.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSignUpStepsRemaining(int index, SignUpSteps value) {
    signUpStepsRemaining.insert(index, value);
    secureStorage.setStringList('ff_signUpStepsRemaining',
        _signUpStepsRemaining.map((x) => x.serialize()).toList());
  }

  List<CurrencyStruct> _currencies = [];
  List<CurrencyStruct> get currencies => _currencies;
  set currencies(List<CurrencyStruct> value) {
    _currencies = value;
    secureStorage.setStringList(
        'ff_currencies', value.map((x) => x.serialize()).toList());
  }

  void deleteCurrencies() {
    secureStorage.delete(key: 'ff_currencies');
  }

  void addToCurrencies(CurrencyStruct value) {
    currencies.add(value);
    secureStorage.setStringList(
        'ff_currencies', _currencies.map((x) => x.serialize()).toList());
  }

  void removeFromCurrencies(CurrencyStruct value) {
    currencies.remove(value);
    secureStorage.setStringList(
        'ff_currencies', _currencies.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCurrencies(int index) {
    currencies.removeAt(index);
    secureStorage.setStringList(
        'ff_currencies', _currencies.map((x) => x.serialize()).toList());
  }

  void updateCurrenciesAtIndex(
    int index,
    CurrencyStruct Function(CurrencyStruct) updateFn,
  ) {
    currencies[index] = updateFn(_currencies[index]);
    secureStorage.setStringList(
        'ff_currencies', _currencies.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCurrencies(int index, CurrencyStruct value) {
    currencies.insert(index, value);
    secureStorage.setStringList(
        'ff_currencies', _currencies.map((x) => x.serialize()).toList());
  }

  UserType? _AdminPricingUserType;
  UserType? get AdminPricingUserType => _AdminPricingUserType;
  set AdminPricingUserType(UserType? value) {
    _AdminPricingUserType = value;
  }

  String _AdminPricingLanguageCode = '';
  String get AdminPricingLanguageCode => _AdminPricingLanguageCode;
  set AdminPricingLanguageCode(String value) {
    _AdminPricingLanguageCode = value;
  }

  List<PlanStruct> _AdminPricingPlans = [];
  List<PlanStruct> get AdminPricingPlans => _AdminPricingPlans;
  set AdminPricingPlans(List<PlanStruct> value) {
    _AdminPricingPlans = value;
    secureStorage.setStringList(
        'ff_AdminPricingPlans', value.map((x) => x.serialize()).toList());
  }

  void deleteAdminPricingPlans() {
    secureStorage.delete(key: 'ff_AdminPricingPlans');
  }

  void addToAdminPricingPlans(PlanStruct value) {
    AdminPricingPlans.add(value);
    secureStorage.setStringList('ff_AdminPricingPlans',
        _AdminPricingPlans.map((x) => x.serialize()).toList());
  }

  void removeFromAdminPricingPlans(PlanStruct value) {
    AdminPricingPlans.remove(value);
    secureStorage.setStringList('ff_AdminPricingPlans',
        _AdminPricingPlans.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAdminPricingPlans(int index) {
    AdminPricingPlans.removeAt(index);
    secureStorage.setStringList('ff_AdminPricingPlans',
        _AdminPricingPlans.map((x) => x.serialize()).toList());
  }

  void updateAdminPricingPlansAtIndex(
    int index,
    PlanStruct Function(PlanStruct) updateFn,
  ) {
    AdminPricingPlans[index] = updateFn(_AdminPricingPlans[index]);
    secureStorage.setStringList('ff_AdminPricingPlans',
        _AdminPricingPlans.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAdminPricingPlans(int index, PlanStruct value) {
    AdminPricingPlans.insert(index, value);
    secureStorage.setStringList('ff_AdminPricingPlans',
        _AdminPricingPlans.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
