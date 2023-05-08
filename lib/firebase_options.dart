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
    apiKey: 'AIzaSyDHXe32fK-qGre8GtpAFGkY4TjEuCs2yEg',
    appId: '1:83643204851:web:3faf0a0592141bf8d46386',
    messagingSenderId: '83643204851',
    projectId: 'resta-pucem',
    authDomain: 'resta-pucem.firebaseapp.com',
    databaseURL: 'https://resta-pucem-default-rtdb.firebaseio.com',
    storageBucket: 'resta-pucem.appspot.com',
    measurementId: 'G-YF1CVXVKYM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpOFS3EAmBzXuUWhESQhtfdRZ4zAax6q0',
    appId: '1:83643204851:android:5335aced7d7f2564d46386',
    messagingSenderId: '83643204851',
    projectId: 'resta-pucem',
    databaseURL: 'https://resta-pucem-default-rtdb.firebaseio.com',
    storageBucket: 'resta-pucem.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBs9Pd-OFaBR2-3JZlN49w0jzRvg52EkYU',
    appId: '1:83643204851:ios:508396b1b616aef2d46386',
    messagingSenderId: '83643204851',
    projectId: 'resta-pucem',
    databaseURL: 'https://resta-pucem-default-rtdb.firebaseio.com',
    storageBucket: 'resta-pucem.appspot.com',
    iosClientId: '83643204851-oei9t83rqdhh48itmthnn5pk63jh4dm7.apps.googleusercontent.com',
    iosBundleId: 'com.example.restaPucem',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBs9Pd-OFaBR2-3JZlN49w0jzRvg52EkYU',
    appId: '1:83643204851:ios:508396b1b616aef2d46386',
    messagingSenderId: '83643204851',
    projectId: 'resta-pucem',
    databaseURL: 'https://resta-pucem-default-rtdb.firebaseio.com',
    storageBucket: 'resta-pucem.appspot.com',
    iosClientId: '83643204851-oei9t83rqdhh48itmthnn5pk63jh4dm7.apps.googleusercontent.com',
    iosBundleId: 'com.example.restaPucem',
  );
}
