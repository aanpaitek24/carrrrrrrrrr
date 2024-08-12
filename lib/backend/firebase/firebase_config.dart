import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB0uP5wWhPAkTU0VsCRA7q7K0A-UHtvlFA",
            authDomain: "tuddz-carwash-2fdzgo.firebaseapp.com",
            projectId: "tuddz-carwash-2fdzgo",
            storageBucket: "tuddz-carwash-2fdzgo.appspot.com",
            messagingSenderId: "693093851634",
            appId: "1:693093851634:web:23da47272c6759820c0b6b"));
  } else {
    await Firebase.initializeApp();
  }
}
