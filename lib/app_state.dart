import 'package:flutter/material.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _darkMode = prefs.getBool('ff_darkMode') ?? _darkMode;
    });
    _safeInit(() {
      _signUpStepsRemaining = prefs
              .getStringList('ff_signUpStepsRemaining')
              ?.map((x) => deserializeEnum<SignUpSteps>(x)!)
              .toList() ??
          _signUpStepsRemaining;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _darkMode = false;
  bool get darkMode => _darkMode;
  set darkMode(bool value) {
    _darkMode = value;
    prefs.setBool('ff_darkMode', value);
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
    prefs.setStringList(
        'ff_signUpStepsRemaining', value.map((x) => x.serialize()).toList());
  }

  void addToSignUpStepsRemaining(SignUpSteps value) {
    signUpStepsRemaining.add(value);
    prefs.setStringList('ff_signUpStepsRemaining',
        _signUpStepsRemaining.map((x) => x.serialize()).toList());
  }

  void removeFromSignUpStepsRemaining(SignUpSteps value) {
    signUpStepsRemaining.remove(value);
    prefs.setStringList('ff_signUpStepsRemaining',
        _signUpStepsRemaining.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSignUpStepsRemaining(int index) {
    signUpStepsRemaining.removeAt(index);
    prefs.setStringList('ff_signUpStepsRemaining',
        _signUpStepsRemaining.map((x) => x.serialize()).toList());
  }

  void updateSignUpStepsRemainingAtIndex(
    int index,
    SignUpSteps Function(SignUpSteps) updateFn,
  ) {
    signUpStepsRemaining[index] = updateFn(_signUpStepsRemaining[index]);
    prefs.setStringList('ff_signUpStepsRemaining',
        _signUpStepsRemaining.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSignUpStepsRemaining(int index, SignUpSteps value) {
    signUpStepsRemaining.insert(index, value);
    prefs.setStringList('ff_signUpStepsRemaining',
        _signUpStepsRemaining.map((x) => x.serialize()).toList());
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
