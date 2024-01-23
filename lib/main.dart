import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/firestore_list.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/naviagtion1.dart';
import 'package:flutter_application_1/navigation.dart';
import 'package:flutter_application_1/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splash',
        routes: {
          'Home': (context) => Home(),
          'firestore_list': (context) => const firestore_list(),
          'splash': (context) => const Splash(),
          'navigation': (context) => const navigation(),
          'naviagation1': (context) => const naviagation1(),
        });
  }
}
