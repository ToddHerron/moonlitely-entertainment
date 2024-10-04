// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

// Excluded from compilation on advice of FF due to the following error:
// Undefined name 'FFLocalizations'. Try correcting the name to one that is defined, or defining the name.

Future<String?> refreshUser(BuildContext context) async {
  try {
    await FirebaseAuth.instance.currentUser?.reload();
    return null;
  } catch (e) {
    switch (FFLocalizations.of(context).languageShortCode) {
      case 'en':
        return 'Something went wrong. Please try again.';
      case 'es':
        return 'Algo salió mal. Inténtalo de nuevo.';
      case 'fr':
        return "Une erreur s'est produite. Veuillez réessayer.";
      default:
        return 'Unable to refresh user record. Please try again.';
    }
  }
}
