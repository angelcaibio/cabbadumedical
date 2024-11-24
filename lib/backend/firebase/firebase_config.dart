import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBHDbqsE2NvnxTvBXRlyBe06Bww14ti9tY",
            authDomain: "cabaddu-medical-circle-1bd99.firebaseapp.com",
            projectId: "cabaddu-medical-circle-1bd99",
            storageBucket: "cabaddu-medical-circle-1bd99.firebasestorage.app",
            messagingSenderId: "360012612737",
            appId: "1:360012612737:web:48cf21c3fc6b1aade17980",
            measurementId: "G-1KTN2QNE19"));
  } else {
    await Firebase.initializeApp();
  }
}
