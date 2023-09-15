import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD8c5RGAxSPEs8xzZ4UjD_cQujKUggG3jI",
            authDomain: "jobs-b3e54.firebaseapp.com",
            projectId: "jobs-b3e54",
            storageBucket: "jobs-b3e54.appspot.com",
            messagingSenderId: "515707400693",
            appId: "1:515707400693:web:0632914a55f46d958c30bc"));
  } else {
    await Firebase.initializeApp();
  }
}
