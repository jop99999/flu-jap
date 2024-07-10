import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_app_solve/app.dart';
import 'package:pizza_app_solve/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCTHsLT8xtr_kdVZUmohqTuaOuv-GRCWtk",
          appId: "1:3945042054:android:1cf5593d96c6eb73ee0107",
          messagingSenderId: "3945042054",
          projectId: "pizza-delivery-76d7a"
      )
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}