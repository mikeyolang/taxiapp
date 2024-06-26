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
    apiKey: 'AIzaSyCgBqqGGL5MsLlwTxOtAHtWWT6qRlGpfIw',
    appId: '1:411915647115:web:cb1850d5312833770b3c8e',
    messagingSenderId: '411915647115',
    projectId: 'taxi-app-43fd5',
    authDomain: 'taxi-app-43fd5.firebaseapp.com',
    storageBucket: 'taxi-app-43fd5.appspot.com',
    measurementId: 'G-X8N18PS1P5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7j4LT_9BO8aWyRITEKa75P29E2T8_ptE',
    appId: '1:411915647115:android:34e580468920fe230b3c8e',
    messagingSenderId: '411915647115',
    projectId: 'taxi-app-43fd5',
    storageBucket: 'taxi-app-43fd5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsjbVrsnr3IkLAXljvJg-BYeqjHnwNvQ0',
    appId: '1:411915647115:ios:68bd56b4ef413a6c0b3c8e',
    messagingSenderId: '411915647115',
    projectId: 'taxi-app-43fd5',
    storageBucket: 'taxi-app-43fd5.appspot.com',
    iosBundleId: 'com.example.taxiapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCsjbVrsnr3IkLAXljvJg-BYeqjHnwNvQ0',
    appId: '1:411915647115:ios:ace27ab89c328a830b3c8e',
    messagingSenderId: '411915647115',
    projectId: 'taxi-app-43fd5',
    storageBucket: 'taxi-app-43fd5.appspot.com',
    iosBundleId: 'com.example.taxiapp.RunnerTests',
  );
}
