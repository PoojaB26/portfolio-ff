import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA9lDkRVdRqeMEJRuF7Us8fUmHKQZ0zlt4",
            authDomain: "poojabhaumik-website.firebaseapp.com",
            projectId: "poojabhaumik-website",
            storageBucket: "poojabhaumik-website.appspot.com",
            messagingSenderId: "99045988146",
            appId: "1:99045988146:web:dd379e4a8275d73cb6a92b",
            measurementId: "G-6J1G2RL9PQ"));
  } else {
    await Firebase.initializeApp();
  }
}
