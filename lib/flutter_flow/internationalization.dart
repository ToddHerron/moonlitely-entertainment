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
  // HomePageOld
  {
    '9vq00ydk': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'fr': 'Se connecter',
    },
    'va38g388': {
      'en': 'Venues',
      'es': 'Lugares',
      'fr': 'Lieux',
    },
    '30all7q8': {
      'en': 'Transform Your Venue with Captivating Live Entertainment',
      'es': '',
      'fr': '',
    },
    'zc2ar0aq': {
      'en':
          'Are you looking to boost your foot traffic, increase customer engagement, and create a vibrant atmosphere in your venue? Moonlitely Entertainment connects you with talented performers and unique entertainment experiences that will leave your customers wanting more.',
      'es': '',
      'fr': '',
    },
    '1hdl2trk': {
      'en': 'Increase Revenue: ',
      'es': '',
      'fr': '',
    },
    'dm4f8ygi': {
      'en': 'Draw in larger crowds and boost your bottom line.',
      'es': '',
      'fr': '',
    },
    'z954si77': {
      'en': 'Effortless Booking: ',
      'es': '',
      'fr': '',
    },
    'k661ruiv': {
      'en': 'Browse a diverse catalog of shows and book with ease.',
      'es': '',
      'fr': '',
    },
    'cc129iyo': {
      'en': 'Diverse Entertainment:  ',
      'es': '',
      'fr': '',
    },
    'yawtzsxj': {
      'en':
          'From trivia nights to live music, find the perfect fit for your venue and clientele.',
      'es': '',
      'fr': '',
    },
    'bnjeiv4r': {
      'en': 'Elevate Your Brand:  ',
      'es': '',
      'fr': '',
    },
    'cmqrl01j': {
      'en':
          'Offer unforgettable experiences that set you apart from the competition.',
      'es': '',
      'fr': '',
    },
    '7pg8y7hp': {
      'en':
          'List your venue today and start booking incredible live entertainment!\n',
      'es': '',
      'fr': '',
    },
    '4ut78p8o': {
      'en': 'List Your Venue',
      'es': 'Enumere su lugar',
      'fr': 'Inscrivez votre lieu',
    },
    '972uedtv': {
      'en': 'Producers',
      'es': 'Productores',
      'fr': 'Producteurs',
    },
    'm2s24yai': {
      'en':
          'Your Stage Awaits: Connect with Venues and Build Your Entertainment Empire',
      'es': '',
      'fr': '',
    },
    'ncuacyus': {
      'en':
          'Moonlitely Entertainment empowers you to take your production skills to the next level.  We provide the platform to connect with eager venue owners and showcase your unique entertainment creations.\n\n\n',
      'es': '',
      'fr': '',
    },
    'lmqk5t61': {
      'en': 'Expand Your Reach: ',
      'es': '',
      'fr': '',
    },
    'u4ibo70x': {
      'en':
          'Access a network of venues searching for high-quality entertainment.',
      'es': '',
      'fr': '',
    },
    '08oifj5p': {
      'en': 'Simplify Booking: ',
      'es': '',
      'fr': '',
    },
    'tlgpumcf': {
      'en':
          'Manage your shows, schedule performances, and coordinate with venues seamlessly.',
      'es': '',
      'fr': '',
    },
    'vrqweswm': {
      'en': 'Grow Your Audience: ',
      'es': '',
      'fr': '',
    },
    'ci3l7c84': {
      'en':
          'Bring your entertainment vision to life and captivate new audiences.',
      'es': '',
      'fr': '',
    },
    'dgqiu32v': {
      'en': 'Increase Earning Potential: ',
      'es': '',
      'fr': '',
    },
    '9bwtzbj4': {
      'en': 'Maximize your bookings and unlock new revenue streams.',
      'es': '',
      'fr': '',
    },
    'xgb3qkq3': {
      'en':
          'Join Moonlitely and unlock a world of opportunities for your productions.\n',
      'es': '',
      'fr': '',
    },
    'yggl9dw3': {
      'en': 'Become A Producer',
      'es': '',
      'fr': '',
    },
    'u6saq7cn': {
      'en': 'Emcees',
      'es': '',
      'fr': '',
    },
    'zq4f3cbj': {
      'en': 'Shine On Stage:\nFind Gigs and Captivate Audiences',
      'es': '',
      'fr': '',
    },
    'mtjfz7n9': {
      'en':
          'Calling all charismatic hosts, engaging storytellers, and captivating performers! Moonlitely Entertainment is your gateway to exciting emcee opportunities at diverse venues.\n\n\n',
      'es': '',
      'fr': '',
    },
    'ddh9wnkm': {
      'en': 'Showcase Your Talent: ',
      'es': '',
      'fr': '',
    },
    'dsiemjd1': {
      'en':
          'Connect with producers seeking talented emcees to bring their shows to life.',
      'es': '',
      'fr': '',
    },
    'au4dy0wf': {
      'en': 'Find Your Perfect Fit: ',
      'es': '',
      'fr': '',
    },
    '3fq861iy': {
      'en':
          'Browse a wide range of shows, from trivia nights to comedy shows, and find gigs that match your style.',
      'es': '',
      'fr': '',
    },
    '40pmposy': {
      'en': 'Boost Your Profile: ',
      'es': '',
      'fr': '',
    },
    'yzgmk1o1': {
      'en':
          'Gain experience, build your reputation, and become a sought-after emcee.',
      'es': '',
      'fr': '',
    },
    'pq2e285r': {
      'en': 'Build Your Network:  ',
      'es': '',
      'fr': '',
    },
    '7cc4o9qo': {
      'en':
          'Collaborate with producers and content creators to expand your professional circle.',
      'es': '',
      'fr': '',
    },
    'kz21rpxk': {
      'en':
          'Create your profile and start browsing emcee opportunities today!\n',
      'es': '',
      'fr': '',
    },
    'frr838kv': {
      'en': 'Become An Emcee',
      'es': '',
      'fr': '',
    },
    '7zz81trr': {
      'en': 'Content Creators',
      'es': '',
      'fr': '',
    },
    'u6exr6an': {
      'en': 'Unleash Your Creativity: Bring Your Entertainment Ideas to Life',
      'es': '',
      'fr': '',
    },
    'm3oy46mk': {
      'en':
          'Do you have a passion for creating engaging trivia questions, hilarious comedy routines, or unique game concepts? Moonlitely Entertainment provides the platform to share your creations with the world.\n\n\n',
      'es': '',
      'fr': '',
    },
    'tq8kfwu9': {
      'en': 'Monetize Your Passion: ',
      'es': '',
      'fr': '',
    },
    'izj4ba9m': {
      'en': 'Turn your entertainment ideas into a source of income.',
      'es': '',
      'fr': '',
    },
    '4r0bdbxe': {
      'en': 'Collaborate with Professionals: ',
      'es': '',
      'fr': '',
    },
    'yb08mt75': {
      'en':
          'Partner with producers and emcees to bring your content to the stage.',
      'es': '',
      'fr': '',
    },
    'g5zpnkfy': {
      'en': 'Reach Wider Audiences: ',
      'es': '',
      'fr': '',
    },
    '16xeiwyr': {
      'en':
          'See your creations come to life at various venues and entertain diverse crowds.',
      'es': '',
      'fr': '',
    },
    'pfu6da8v': {
      'en': 'Build Your Portfolio: ',
      'es': '',
      'fr': '',
    },
    '5hajjx71': {
      'en':
          'Showcase your talent and gain recognition for your unique content.',
      'es': '',
      'fr': '',
    },
    '1po628s7': {
      'en': 'Join Moonlitely and let your creativity shine!\n\n',
      'es': '',
      'fr': '',
    },
    'may3cr71': {
      'en': 'Become A Content Creator',
      'es': '',
      'fr': '',
    },
    'hl7niboj': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // createProfile_VenueAdmin
  {
    'icmjqhgr': {
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
  // Email_Verified
  {
    'uppy6h65': {
      'en': 'Email Verified',
      'es': 'Correo electrónico verificado',
      'fr': 'E-mail vérifié',
    },
    'x2d39ddq': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Dashboard_VenueAdmin
  {
    'ef94sv23': {
      'en': 'Below is a summary of your teams activity.',
      'es': '',
      'fr': '',
    },
    'biu6yjn0': {
      'en': 'New Customers',
      'es': '',
      'fr': '',
    },
    'g6fk9c5f': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    'lwiax6bj': {
      'en': 'New Contracts',
      'es': '',
      'fr': '',
    },
    'i0sgt5xq': {
      'en': '3,200',
      'es': '',
      'fr': '',
    },
    'eay5nqcg': {
      'en': 'Venues',
      'es': '',
      'fr': '',
    },
    'd6dy209g': {
      'en': 'UI Design Team',
      'es': '',
      'fr': '',
    },
    '9k0hs4vo': {
      'en': '4 Members',
      'es': '',
      'fr': '',
    },
    '56byyo7b': {
      'en': 'Contract Activity',
      'es': '',
      'fr': '',
    },
    '8tiff86s': {
      'en': 'Below is an a summary of activity.',
      'es': '',
      'fr': '',
    },
    '9i92e6v7': {
      'en': 'Device Management',
      'es': '',
      'fr': '',
    },
    'ch520ura': {
      'en': 'Below is an a summary of activity.',
      'es': '',
      'fr': '',
    },
    '6x3plidd': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    '2c1deyy6': {
      'en': '__',
      'es': '',
      'fr': '',
    },
  },
  // Dashboard_Producer
  {
    '920dk1ks': {
      'en': 'Below is a summary of your teams activity.',
      'es': '',
      'fr': '',
    },
    '5rr2zuc9': {
      'en': 'New Customers',
      'es': '',
      'fr': '',
    },
    'ujoatr2l': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    '9owg21g8': {
      'en': 'New Contracts',
      'es': '',
      'fr': '',
    },
    'knf6njjj': {
      'en': '3,200',
      'es': '',
      'fr': '',
    },
    'f90ok52a': {
      'en': 'Projects',
      'es': '',
      'fr': '',
    },
    'gg46r1kv': {
      'en': 'UI Design Team',
      'es': '',
      'fr': '',
    },
    'g7ox1p4i': {
      'en': '4 Members',
      'es': '',
      'fr': '',
    },
    'fthwycg4': {
      'en': 'Contract Activity',
      'es': '',
      'fr': '',
    },
    'xm961fzw': {
      'en': 'Below is an a summary of activity.',
      'es': '',
      'fr': '',
    },
    'jpoe23z4': {
      'en': 'Device Management',
      'es': '',
      'fr': '',
    },
    '0gbw590o': {
      'en': 'Below is an a summary of activity.',
      'es': '',
      'fr': '',
    },
    'kv1bvlpc': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    '3yv6uwfb': {
      'en': '__',
      'es': '',
      'fr': '',
    },
  },
  // Dashboard_Emcee
  {
    '9uob4ssu': {
      'en': 'Below is a summary of your teams activity.',
      'es': '',
      'fr': '',
    },
    '1yeaw518': {
      'en': 'New Customers',
      'es': '',
      'fr': '',
    },
    'pakt47zg': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    'mal0mg2t': {
      'en': 'New Contracts',
      'es': '',
      'fr': '',
    },
    'p9gaktqc': {
      'en': '3,200',
      'es': '',
      'fr': '',
    },
    'yjeyd2tz': {
      'en': 'Projects',
      'es': '',
      'fr': '',
    },
    'l479m4ng': {
      'en': 'UI Design Team',
      'es': '',
      'fr': '',
    },
    '6siki0hy': {
      'en': '4 Members',
      'es': '',
      'fr': '',
    },
    'dx39z1g0': {
      'en': 'Contract Activity',
      'es': '',
      'fr': '',
    },
    'y6sv1tw9': {
      'en': 'Below is an a summary of activity.',
      'es': '',
      'fr': '',
    },
    'bgewigyg': {
      'en': 'Device Management',
      'es': '',
      'fr': '',
    },
    'mg9c1w1p': {
      'en': 'Below is an a summary of activity.',
      'es': '',
      'fr': '',
    },
    'n3mi4nbb': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    's9fvhsi5': {
      'en': '__',
      'es': '',
      'fr': '',
    },
  },
  // Dashboard_ContentCreator
  {
    'd1zdyinw': {
      'en': 'Below is a summary of your teams activity.',
      'es': '',
      'fr': '',
    },
    'rgfb8t8h': {
      'en': 'New Customers',
      'es': '',
      'fr': '',
    },
    'iua0sy1t': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    '0lphgt4a': {
      'en': 'New Contracts',
      'es': '',
      'fr': '',
    },
    'cvoxd9eh': {
      'en': '3,200',
      'es': '',
      'fr': '',
    },
    'lkrsrxd3': {
      'en': 'Projects',
      'es': '',
      'fr': '',
    },
    '5qg94anf': {
      'en': 'UI Design Team',
      'es': '',
      'fr': '',
    },
    'w53g0hjc': {
      'en': '4 Members',
      'es': '',
      'fr': '',
    },
    'km94lq0t': {
      'en': 'Contract Activity',
      'es': '',
      'fr': '',
    },
    '12bl0bwd': {
      'en': 'Below is an a summary of activity.',
      'es': '',
      'fr': '',
    },
    'uc9mu70r': {
      'en': 'Device Management',
      'es': '',
      'fr': '',
    },
    '86zb43h1': {
      'en': 'Below is an a summary of activity.',
      'es': '',
      'fr': '',
    },
    'bcl08dz6': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    '931a7t32': {
      'en': '__',
      'es': '',
      'fr': '',
    },
  },
  // Dashboard_MoonlitelyAdmin
  {
    '9msdfhii': {
      'en': 'Below is a summary of your teams activity.',
      'es': '',
      'fr': '',
    },
    'e28b5sfc': {
      'en': 'New Customers',
      'es': '',
      'fr': '',
    },
    'q7lypaem': {
      'en': '24',
      'es': '',
      'fr': '',
    },
    'wsy35yis': {
      'en': 'New Contracts',
      'es': '',
      'fr': '',
    },
    'c4nd7ecy': {
      'en': '3,200',
      'es': '',
      'fr': '',
    },
    'a514p480': {
      'en': 'Projects',
      'es': '',
      'fr': '',
    },
    'hreb8zne': {
      'en': 'UI Design Team',
      'es': '',
      'fr': '',
    },
    'gm7i16pd': {
      'en': '4 Members',
      'es': '',
      'fr': '',
    },
    'yh77jdpv': {
      'en': 'Contract Activity',
      'es': '',
      'fr': '',
    },
    '55rnnoq0': {
      'en': 'Below is an a summary of activity.',
      'es': '',
      'fr': '',
    },
    'len6hsm6': {
      'en': 'Device Management',
      'es': '',
      'fr': '',
    },
    'a32mhkay': {
      'en': 'Below is an a summary of activity.',
      'es': '',
      'fr': '',
    },
    'ckhnove2': {
      'en': 'Dashboard',
      'es': '',
      'fr': '',
    },
    '4q4qcc9o': {
      'en': '__',
      'es': '',
      'fr': '',
    },
  },
  // HomePageRecent
  {
    'xzcip54w': {
      'en': 'Venues',
      'es': 'Lugares',
      'fr': 'Lieux',
    },
    'hknodh5o': {
      'en': 'Producers',
      'es': 'Productores',
      'fr': 'Producteurs',
    },
    '3voy23fw': {
      'en': 'Performers',
      'es': 'Intérpretes',
      'fr': 'Interprètes',
    },
    '5ycaxzqm': {
      'en': 'Creators',
      'es': 'Creadores',
      'fr': 'Créateurs',
    },
    'eixlmecw': {
      'en': 'Log In',
      'es': 'Acceso',
      'fr': 'Se connecter',
    },
    'st0xovf6': {
      'en': 'Venues',
      'es': 'Lugares',
      'fr': 'Lieux',
    },
    'vflz306a': {
      'en': 'Producers',
      'es': 'Productores',
      'fr': 'Producteurs',
    },
    'g49cksro': {
      'en': 'Performers',
      'es': 'Artistas',
      'fr': 'Interprètes',
    },
    'tm2xyjed': {
      'en': 'Creators',
      'es': 'Creadores',
      'fr': 'Créateurs',
    },
    'eh0dzgdi': {
      'en': 'Log In',
      'es': 'Acceso',
      'fr': 'Se connecter',
    },
    'd841ynyu': {
      'en':
          'Moonlitely connects venues,  producers, performers, and content creators to craft unforgettable live experiences.',
      'es':
          'Moonlitely conecta lugares, productores, artistas y creadores de contenido para crear experiencias en vivo inolvidables.',
      'fr':
          'Moonlitely connecte des lieux, des producteurs, des artistes et des créateurs de contenu pour créer des expériences live inoubliables.',
    },
    'vilympyr': {
      'en': 'Learn More',
      'es': 'Más información',
      'fr': 'Apprendre encore plus',
    },
    '91qyq8qu': {
      'en': 'Get Started',
      'es': 'Empezar',
      'fr': 'Commencer',
    },
    'zu76sxef': {
      'en': 'Quick Links',
      'es': '',
      'fr': '',
    },
    'ec0hiajj': {
      'en': 'About Us',
      'es': '',
      'fr': '',
    },
    'ii2eue81': {
      'en': 'Services',
      'es': '',
      'fr': '',
    },
    '1v8mc0nl': {
      'en': 'Contact',
      'es': '',
      'fr': '',
    },
    'uegdnrq9': {
      'en': '© 2024 Moonlitely Entertainment. All rights reserved.',
      'es': '',
      'fr': '',
    },
    'myu1i5mq': {
      'en': 'Legal',
      'es': '',
      'fr': '',
    },
    '1219n1xm': {
      'en': 'Terms of Service',
      'es': '',
      'fr': '',
    },
    'n9va70zw': {
      'en': 'Privacy Policy',
      'es': '',
      'fr': '',
    },
    'k165232n': {
      'en': ' ',
      'es': '',
      'fr': '',
    },
    'ekk9knki': {
      'en': '© 2024 Moonlitely Entertainment. \nAll rights reserved.',
      'es': '© 2024 Moonlitely Entertainment. Todos los derechos reservados.',
      'fr': '© 2024 Moonlitely Entertainment. Tous droits réservés.',
    },
  },
  // HomePage
  {
    'il1ipdh6': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'fr': 'Se connecter',
    },
    '4bkxoq8m': {
      'en': 'For Venues',
      'es': 'Lugares',
      'fr': 'Lieux',
    },
    'njrzjdae': {
      'en': 'For Producers',
      'es': 'Productores',
      'fr': 'Producteurs',
    },
    'qguou69f': {
      'en': 'For Performers',
      'es': 'Intérpretes',
      'fr': 'Interprètes',
    },
    '9w9s70du': {
      'en': 'For Content Creators',
      'es': 'Creadores de contenido',
      'fr': 'Créateurs de contenu',
    },
    'gt4fhcek': {
      'en': 'LIVE.',
      'es': 'ENTRETENIMIENTO.',
      'fr': 'LOCAL. ',
    },
    'de2ic343': {
      'en': 'LOCAL.',
      'es': 'LOCAL',
      'fr': 'EN DIRECT.',
    },
    'om88ejlp': {
      'en': 'ENTERTAINMENT.',
      'es': 'EN VIVO.',
      'fr': 'DIVERTISSEMENT.',
    },
    '58kkn626': {
      'en': 'LIVE. LOCAL. ENTERTAINMENT.',
      'es': 'ENTRETENIMIENTO. LOCAL. EN VIVO.',
      'fr': 'DIVERTISSEMENT. LOCAL. EN DIRECT.',
    },
    '1hohmst0': {
      'en': 'Get Started For Free',
      'es': 'Empiece gratis',
      'fr': 'Commencez gratuitement',
    },
    'qc0izkqs': {
      'en': 'Learn More',
      'es': 'Más información',
      'fr': 'Apprendre encore plus',
    },
    'sayanq2q': {
      'en':
          'Moonlitely connects venues, \nproducers, performers, and \ncontent creators to craft \nunforgettable live experiences.',
      'es':
          'Moonlitely conecta lugares, \nproductores, artistas y \ncreadores de contenido para crear \nexperiencias en vivo inolvidables.',
      'fr':
          'Moonlitely connecte des lieux, \ndes producteurs, des artistes et des créateurs de contenu pour créer des expériences en direct inoubliables.',
    },
    'oid29vsl': {
      'en':
          'Moonlitely connects venues, producers, performers, and \ncontent creators to craft unforgettable live experiences.',
      'es':
          'Moonlitely conecta lugares, productores, artistas y \ncreadores de contenido para crear experiencias en vivo inolvidables.',
      'fr':
          'Moonlitely connecte les lieux, les producteurs, les artistes et\nles créateurs de contenu pour créer des expériences live inoubliables.',
    },
    'oyz60tu2': {
      'en': '© 2024 Moonlitely Entertainment.  \nAll rights reserved.',
      'es': '© 2024 Moonlitely Entertainment. \nTodos los derechos reservados.',
      'fr': '© 2024 Moonlitely Entertainment. \nTous droits réservés.',
    },
    'bo3zo8a9': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'fr': 'Se connecter',
    },
    '90rie2s4': {
      'en': 'You\'ll love us in portrait mode!',
      'es': '¡Nos amarás en modo retrato!',
      'fr': 'Vous nous adorerez en mode portrait !',
    },
    '2sp6b6ez': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
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
  // SignUp_Modal
  {
    'fycq7hrp': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'fr': 'S\'inscrire',
    },
    'krzn4n41': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    '188fsz31': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'i2bs0qel': {
      'en': 'todd.c.herron@gmail.com',
      'es': 'todd.c.herron@gmail.com',
      'fr': 'todd.c.herron@gmail.com',
    },
    'hjw79dih': {
      'en': 'Password',
      'es': 'Contraseña',
      'fr': 'Mot de passe',
    },
    'pk9avutl': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '5y27vrs7': {
      'en': 'test1234',
      'es': 'test1234',
      'fr': 'test1234',
    },
    '24ffbtxd': {
      'en': 'Confirm password',
      'es': 'Confirmar Contraseña',
      'fr': 'Confirmez le mot de passe',
    },
    '00o14yw5': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'bmtmqtbe': {
      'en': 'test1234',
      'es': 'test1234',
      'fr': 'test1234',
    },
    'y6718nwv': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'fr': 'Créer un compte',
    },
    'n9wyqpnl': {
      'en': 'or continue with',
      'es': 'o continuar con',
      'fr': 'ou continuer avec',
    },
    '48xe7xrc': {
      'en': 'Google',
      'es': 'Google',
      'fr': 'Google',
    },
    'icmzla9f': {
      'en': 'Apple',
      'es': 'Apple',
      'fr': 'Apple',
    },
    'x4eo8qlc': {
      'en': 'Field is required',
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
    'fj8d2iy1': {
      'en': 'Have an account? ',
      'es': '¿Tienes una cuenta? ',
      'fr': 'Vous avez un compte? ',
    },
    'd9afgagn': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'fr': 'Se connecter',
    },
    'g35w94jx': {
      'en': 'Reset Password',
      'es': 'Restablecer contraseña',
      'fr': 'Réinitialiser le mot de passe',
    },
  },
  // LanguageSelector
  {
    'd0v50e5u': {
      'en': 'EN',
      'es': 'EN',
      'fr': 'EN',
    },
    'kqlhb5t7': {
      'en': 'ES',
      'es': 'ES',
      'fr': 'ES',
    },
    '6moyjp6b': {
      'en': 'FR',
      'es': 'FR',
      'fr': 'FR',
    },
  },
  // EmailConfirmationCountDown
  {
    'h6u474yr': {
      'en': 'Please check your email',
      'es': 'Por favor revise su correo electrónico',
      'fr': 'Veuillez vérifier votre email',
    },
  },
  // SignIn_Modal
  {
    'o7p3dk03': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'fr': 'Se connecter',
    },
    'y46pyogq': {
      'en': 'Email',
      'es': '',
      'fr': '',
    },
    '7y3i1gsa': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'boxqj8rh': {
      'en': 'todd.c.herron@gmail.com',
      'es': '',
      'fr': '',
    },
    'qqj87kxq': {
      'en': 'Password',
      'es': '',
      'fr': '',
    },
    '7coubepy': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '73nb6e4q': {
      'en': 'test1234',
      'es': '',
      'fr': '',
    },
    'bme2jwo4': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'fr': 'Se connecter',
    },
    '3abh52uv': {
      'en': 'or continue with',
      'es': 'o continuar con',
      'fr': 'ou continuer avec',
    },
    '0rfn9stc': {
      'en': 'Google',
      'es': 'Google',
      'fr': 'Google',
    },
    'fbqa4kmz': {
      'en': 'Apple',
      'es': 'Apple',
      'fr': 'Apple',
    },
    'zla7z0gm': {
      'en': 'Email address is required',
      'es': 'Se requiere dirección de correo electrónico',
      'fr': 'L\'adresse e-mail est obligatoire',
    },
    'rt7mq6d7': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'rndynwav': {
      'en': 'Password is required',
      'es': 'Se requiere contraseña',
      'fr': 'Le mot de passe est requis',
    },
    '2wixn662': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'd3o11md8': {
      'en': 'Need an account? ',
      'es': '¿Necesitas una cuenta?',
      'fr': 'Besoin d\'un compte ?',
    },
    'h4dpbd8h': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'fr': 'S\'inscrire',
    },
    'me8el2k1': {
      'en': 'Reset Password',
      'es': 'Restablecer contraseña',
      'fr': 'Réinitialiser le mot de passe',
    },
  },
  // ResetPassword_Modal
  {
    '2jic8ydx': {
      'en': 'Reset Password',
      'es': 'Restablecer contraseña',
      'fr': 'Réinitialiser le mot de passe',
    },
    's41j6j7c': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    '4q45f0i6': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '2y2r823k': {
      'en': 'Send Reset Link',
      'es': 'Enviar enlace de restablecimiento',
      'fr': 'Envoyer le lien de réinitialisation',
    },
    'mqxdrf7o': {
      'en': 'Email address is required',
      'es': 'Se requiere dirección de correo electrónico',
      'fr': 'L\'adresse e-mail est obligatoire',
    },
    '25r4t2hc': {
      'en': 'Invalid email address',
      'es': '',
      'fr': '',
    },
    '5utk3dkw': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    'w2ryb8du': {
      'en': 'Password is required',
      'es': '',
      'fr': '',
    },
    '7l87iao3': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
  },
  // UTILITY_DummyText
  {
    '8ey6b09a': {
      'en':
          'Boisterous did gentleman think appearance wise ten opinions connection natural forth fact favourite easy terminated explained size. Strictly sing pleasant. Journey kindness drawn company extent delay farther. Sooner wife amiable long heart gave taste very parties green improving. Marriage miss expenses fat. ',
      'es':
          'Destacaba atrevio perdido servir plazos ejemplo prescindir. Ocasiones gozabase cantando inventado ver pago. Penas susto tierno odio resonaban pormenor medico zumbaban vagabundos alli sacar aseguraban. Papada habil leer bajando lejanos ton arroz mejico fechas crimen hembras absoluta. Mitad recuerdos historia fueran abrio quedo sentaban intereses crei alumbrada poder gozabase hablado. ',
      'fr':
          'Tant mutuel vert corbeille doit vivons eumes plutot continue eux ouvrent cahots avis ere verdit certains soutenir. Sinistres pays feeriques oignons baquet campagne soleil au croire long petites armes fuite. Theatre coeur entrainait exemple allaient jeune epouser malheur bon singes perimetre prenons. Trotte allait branches frisottent fievre. Avantage casernes placa instruite laissa. ',
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
    'kt2c46b1': {
      'en': 'SUBTLE',
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
