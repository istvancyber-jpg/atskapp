import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAahdPmby06UGoVrRmSpzfaS8q1eIYIqh8",
            authDomain: "atsk-3b105.firebaseapp.com",
            projectId: "atsk-3b105",
            storageBucket: "atsk-3b105.firebasestorage.app",
            messagingSenderId: "1003951044072",
            appId: "1:1003951044072:web:c7af7c45507481391a605d"));
  } else {
    await Firebase.initializeApp();
  }
}
