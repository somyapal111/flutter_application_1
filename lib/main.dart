import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Add.dart';
import 'package:flutter_application_1/complete.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/naviagtion1.dart';
import 'package:flutter_application_1/option.dart';
import 'package:flutter_application_1/profileScreen.dart';
import 'package:flutter_application_1/signin.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:flutter_application_1/navigation.dart';

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
        initialRoute: 'Signin',
        routes: {
          'signup': (context) => const signup(),
          'Signin': (context) => const Signin(),
          'Home': (context) => const Home(),
          'navigation': (context) => const navigation(),
          'profileScreen': (context) => const profileScreen(),
          'Add': (context) => const add(),
          'option': (context) => const option(),
          'naviagation1': (context) => const naviagation1(),
          'complete': (context) => const complete(),
        });
  }
}
