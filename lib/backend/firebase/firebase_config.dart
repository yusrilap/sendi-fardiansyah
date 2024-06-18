import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDhxJf73d8HjzoPTXeeoUtXeFyudxGTsC8",
            authDomain: "survey-be974.firebaseapp.com",
            projectId: "survey-be974",
            storageBucket: "survey-be974.appspot.com",
            messagingSenderId: "1069743067645",
            appId: "1:1069743067645:web:f7ed73e58bc5b4f7be8994",
            measurementId: "G-G2GWY4TP7B"));
  } else {
    await Firebase.initializeApp();
  }
}
