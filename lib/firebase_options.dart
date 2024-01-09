// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDZQ4q7c3TtXrGDMAGnnItA1GWtIBIuKaw',
    appId: '1:717241668758:web:817756b988261737771eb7',
    messagingSenderId: '717241668758',
    projectId: 'flutter-ba986',
    authDomain: 'flutter-ba986.firebaseapp.com',
    storageBucket: 'flutter-ba986.appspot.com',
    measurementId: 'G-MEC43VZTXV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBPYl3ZsAAwrPQCHZoCXXnbDoBzAfP9btM',
    appId: '1:717241668758:android:a02b3eb94016d050771eb7',
    messagingSenderId: '717241668758',
    projectId: 'flutter-ba986',
    storageBucket: 'flutter-ba986.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQstRgeyHireZ5oLzOZZNL2NYGdMvCvTU',
    appId: '1:717241668758:ios:942417571f1f20a7771eb7',
    messagingSenderId: '717241668758',
    projectId: 'flutter-ba986',
    storageBucket: 'flutter-ba986.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQstRgeyHireZ5oLzOZZNL2NYGdMvCvTU',
    appId: '1:717241668758:ios:15dbdf78ce3d81f7771eb7',
    messagingSenderId: '717241668758',
    projectId: 'flutter-ba986',
    storageBucket: 'flutter-ba986.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
