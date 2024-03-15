import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD8DWpJ1QiT6-3LGVpB5Jkw5mWM3FSimb0",
            authDomain: "acadlink2024-4cf70.firebaseapp.com",
            projectId: "acadlink2024-4cf70",
            storageBucket: "acadlink2024-4cf70.appspot.com",
            messagingSenderId: "27458824334",
            appId: "1:27458824334:web:8275675e5bc839098f01df",
            measurementId: "G-1KZ77FXD0L"));
  } else {
    await Firebase.initializeApp();
  }
}
