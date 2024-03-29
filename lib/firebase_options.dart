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
    apiKey: 'AIzaSyB8K--9v36pw4W77nPmszbnX4q7waug5dQ',
    appId: '1:533476926539:web:e3ba750b345c6e15fd59ce',
    messagingSenderId: '533476926539',
    projectId: 'whitedash-23202',
    authDomain: 'whitedash-23202.firebaseapp.com',
    databaseURL: 'https://whitedash-23202-default-rtdb.firebaseio.com',
    storageBucket: 'whitedash-23202.appspot.com',
    measurementId: 'G-PZYMW0WP4S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6eWTjwzvNA9ecKUE9zk1DG7_jH6Zy_D0',
    appId: '1:533476926539:android:5bd05ac5731fd211fd59ce',
    messagingSenderId: '533476926539',
    projectId: 'whitedash-23202',
    databaseURL: 'https://whitedash-23202-default-rtdb.firebaseio.com',
    storageBucket: 'whitedash-23202.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD3fmBDul1Ueqhvz2qzrPLVN0-bZ0EpJbg',
    appId: '1:533476926539:ios:efec7646d4cf4b59fd59ce',
    messagingSenderId: '533476926539',
    projectId: 'whitedash-23202',
    databaseURL: 'https://whitedash-23202-default-rtdb.firebaseio.com',
    storageBucket: 'whitedash-23202.appspot.com',
    iosBundleId: 'com.example.gdscSolutionProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD3fmBDul1Ueqhvz2qzrPLVN0-bZ0EpJbg',
    appId: '1:533476926539:ios:248685b3206edb61fd59ce',
    messagingSenderId: '533476926539',
    projectId: 'whitedash-23202',
    databaseURL: 'https://whitedash-23202-default-rtdb.firebaseio.com',
    storageBucket: 'whitedash-23202.appspot.com',
    iosBundleId: 'com.example.gdscSolutionProject.RunnerTests',
  );
}
