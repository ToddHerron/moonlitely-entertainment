import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
    String? esText = '',
  }) =>
      [enText, frText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'ikflsyz5': {
      'en': 'HomePage',
      'es': '',
      'fr': '',
    },
    'hl7niboj': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // Account_Create
  {
    'cfpbok9r': {
      'en': 'Get Started',
      'es': 'Empezar',
      'fr': 'Commencer',
    },
    'n4vmbeab': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    'a25a44kn': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '6e8xzn6y': {
      'en': 'todd.c.herron@gmail.com',
      'es': '',
      'fr': '',
    },
    '5sl7mxrl': {
      'en': 'Password',
      'es': 'Contraseña',
      'fr': 'Mot de passe',
    },
    'p57latkk': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'kcus22ga': {
      'en': 'test1234',
      'es': '',
      'fr': '',
    },
    'vauloxcs': {
      'en': 'Confirm password',
      'es': 'Confirmar contraseña',
      'fr': 'Confirmez le mot de passe',
    },
    'y9tj3i1m': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'j7c07y2j': {
      'en': 'test1234',
      'es': '',
      'fr': '',
    },
    'evrj0xwi': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'fr': 'Créer un compte',
    },
    'd5hxsimf': {
      'en': 'or continue with',
      'es': 'o continuar con',
      'fr': 'ou continuer avec',
    },
    'st674hv6': {
      'en': 'Google',
      'es': 'Google',
      'fr': 'Google',
    },
    '2xgou0zv': {
      'en': 'Apple',
      'es': 'Apple',
      'fr': 'Apple',
    },
    'd1ku5slp': {
      'en': 'Already have an account? ',
      'es': '',
      'fr': '',
    },
    'w8i2enrw': {
      'en': 'SIGN IN',
      'es': '',
      'fr': '',
    },
    'y4mvvz7k': {
      'en': 'RESET PASSWORD',
      'es': '',
      'fr': '',
    },
    'x4eo8qlc': {
      'en': 'Email address is required',
      'es': 'Se requiere dirección de correo electrónico',
      'fr': 'L\'adresse e-mail est obligatoire',
    },
    '25r4t2hc': {
      'en': 'Invalid email address',
      'es': '',
      'fr': '',
    },
    'do7d5kw6': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'iye8r9nq': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'cfvqdjdm': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'g1e4irwt': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'wm4u8qor': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'x2d39ddq': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // auth_2_Login
  {
    'u5xx5d71': {
      'en': 'flow.io',
      'es': '',
      'fr': '',
    },
    'ejyr5fyb': {
      'en': 'Welcome Back',
      'es': '',
      'fr': '',
    },
    'htz9fp7g': {
      'en': 'Fill out the information below in order to access your account.',
      'es': '',
      'fr': '',
    },
    'qynl9ewv': {
      'en': 'Email',
      'es': '',
      'fr': '',
    },
    'j1ww1er8': {
      'en': 'Password',
      'es': '',
      'fr': '',
    },
    '7ha2aq8m': {
      'en': 'Sign In',
      'es': '',
      'fr': '',
    },
    'v4ny5gxu': {
      'en': 'Or sign in with',
      'es': '',
      'fr': '',
    },
    '6cd5jhsh': {
      'en': 'Continue with Google',
      'es': '',
      'fr': '',
    },
    'm104ufi4': {
      'en': 'Continue with Apple',
      'es': '',
      'fr': '',
    },
    '0wpi4gwl': {
      'en': 'Don\'t have an account?  ',
      'es': '',
      'fr': '',
    },
    'wmunrhgl': {
      'en': 'Create Account',
      'es': '',
      'fr': '',
    },
    'e9xwcm2m': {
      'en': 'Forgot password?',
      'es': '',
      'fr': '',
    },
    '2sp6b6ez': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // auth_2_ForgotPassword
  {
    'icmjqhgr': {
      'en': 'flow.io',
      'es': '',
      'fr': '',
    },
    'oj4e382f': {
      'en': 'Forgot Password',
      'es': '',
      'fr': '',
    },
    'jq4w0x53': {
      'en':
          'Please fill out your email belo in order to recieve a reset password link.',
      'es': '',
      'fr': '',
    },
    'nj7qwy0m': {
      'en': 'Email',
      'es': '',
      'fr': '',
    },
    'kje4y70b': {
      'en': 'Send Reset Link',
      'es': '',
      'fr': '',
    },
    '9aeoc0cx': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // auth_2_createProfile
  {
    '3utqzxu6': {
      'en': 'flow.io',
      'es': '',
      'fr': '',
    },
    '3u3bg90v': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // auth_2_Profile
  {
    'vlgpo1xn': {
      'en': 'Your Account',
      'es': '',
      'fr': '',
    },
    '1s0b11cn': {
      'en': 'Edit Profile',
      'es': '',
      'fr': '',
    },
    'vsw8nqlx': {
      'en': 'App Settings',
      'es': '',
      'fr': '',
    },
    'iu6u8ld5': {
      'en': 'Support',
      'es': '',
      'fr': '',
    },
    'xgxgi93v': {
      'en': 'Terms of Service',
      'es': '',
      'fr': '',
    },
    'nailvsk3': {
      'en': 'Log Out',
      'es': '',
      'fr': '',
    },
    's5lyczud': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // auth_2_EditProfile
  {
    '4oko5vru': {
      'en': 'Home',
      'es': '',
      'fr': '',
    },
  },
  // editProfile_auth_2
  {
    'cd3rqxxv': {
      'en': 'Adjust the content below to update your profile.',
      'es': '',
      'fr': '',
    },
    '82j0m5cj': {
      'en': 'Change Photo',
      'es': '',
      'fr': '',
    },
    'a9qyt8m6': {
      'en': 'Full Name',
      'es': '',
      'fr': '',
    },
    'qp4u57p8': {
      'en': 'Your full name...',
      'es': '',
      'fr': '',
    },
    'rkrvmy5y': {
      'en': 'Owner/Founder',
      'es': '',
      'fr': '',
    },
    'osuateyd': {
      'en': 'Director',
      'es': '',
      'fr': '',
    },
    'rdhcz2w8': {
      'en': 'Manager',
      'es': '',
      'fr': '',
    },
    'gmpcuvk7': {
      'en': 'Mid-Manager',
      'es': '',
      'fr': '',
    },
    '1uhvmxln': {
      'en': 'Employee',
      'es': '',
      'fr': '',
    },
    '4wcc3e4b': {
      'en': 'Your Role',
      'es': '',
      'fr': '',
    },
    'hncndwwr': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
    },
    'qdrf6epn': {
      'en': 'Short Description',
      'es': '',
      'fr': '',
    },
    'dr3fw9qn': {
      'en': 'A little about you...',
      'es': '',
      'fr': '',
    },
    'hb0awi64': {
      'en': '[bio]',
      'es': '',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    'uc1fht94': {
      'en': 'Primary',
      'es': '',
      'fr': '',
    },
    'ehmfyzjx': {
      'en': 'Alternate',
      'es': '',
      'fr': '',
    },
    'yd28fdxr': {
      'en': 'Destructive',
      'es': '',
      'fr': '',
    },
    'tcubn3gl': {
      'en': 'SUBTLE',
      'es': '',
      'fr': '',
    },
    '99csh79q': {
      'en': 'Label',
      'es': '',
      'fr': '',
    },
    'e5hdcky6': {
      'en': 'No Border',
      'es': '',
      'fr': '',
    },
    'h87htnbp': {
      'en': 'Label',
      'es': '',
      'fr': '',
    },
    'ljoy77um': {
      'en': 'No Border',
      'es': '',
      'fr': '',
    },
    '13drtae3': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'mwytv8d0': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'sdxtkflq': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'bq97rp29': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '7nq396c9': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'w574vw16': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '9x5u8e4o': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '4oejb6cj': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'ii7p58b3': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'k0fsczd9': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '7c5n9f0r': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'rri8l8dv': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'jihp75zm': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'n4k61mxz': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'hap1u8va': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '6hkegc2e': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'goewrztb': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'v4p38mwt': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '32t7jiy5': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'd65waohj': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'gkb1nekn': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'hzcz6non': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '0g4ai79e': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '7c9frp9o': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'jhdw5fu9': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '87acjr05': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'o65npxpi': {
      'en': '',
      'es': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
