import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDxZyeBtZF8jFOMglF73ZU8fIuw4zXthKI",
            authDomain: "cliq-716e5.firebaseapp.com",
            projectId: "cliq-716e5",
            storageBucket: "cliq-716e5.appspot.com",
            messagingSenderId: "77909421907",
            appId: "1:77909421907:web:53d3c6ceaaf0364b333ba6",
            measurementId: "G-8TWHENMJPE"));
  } else {
    await Firebase.initializeApp();
  }
}
