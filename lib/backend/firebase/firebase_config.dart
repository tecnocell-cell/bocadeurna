import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBbkQEl79g8J8EJdE6luAuZV7I_5MsCRrs",
            authDomain: "pesquisaeleitoral-d19b3.firebaseapp.com",
            projectId: "pesquisaeleitoral-d19b3",
            storageBucket: "pesquisaeleitoral-d19b3.appspot.com",
            messagingSenderId: "739370417054",
            appId: "1:739370417054:web:ba54547b42365c2868b48f"));
  } else {
    await Firebase.initializeApp();
  }
}
