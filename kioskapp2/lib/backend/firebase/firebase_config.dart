import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCSqxUYC3HGUM2aOZArclUrA2S8mb7g1-8",
            authDomain: "kioskapp2-n011ft.firebaseapp.com",
            projectId: "kioskapp2-n011ft",
            storageBucket: "kioskapp2-n011ft.appspot.com",
            messagingSenderId: "988091627695",
            appId: "1:988091627695:web:25f0c9f5ea523f5177fc5a"));
  } else {
    await Firebase.initializeApp();
  }
}
