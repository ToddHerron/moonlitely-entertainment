import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB0q6s9zHxJ0TkD8Z8RklPZJInaM6B6ZPo",
            authDomain: "moonlitely-entertainmen-xt654z.firebaseapp.com",
            projectId: "moonlitely-entertainmen-xt654z",
            storageBucket: "moonlitely-entertainmen-xt654z.appspot.com",
            messagingSenderId: "968802036417",
            appId: "1:968802036417:web:1575bb5990601a03df0240"));
  } else {
    await Firebase.initializeApp();
  }
}
