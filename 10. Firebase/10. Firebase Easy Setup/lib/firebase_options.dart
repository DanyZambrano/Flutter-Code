// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA_XBi6xsXnlGvR7LI8BNuKHBHKIk7FHxk',
    appId: '1:198085913361:web:6741773013dd26ea08fab0',
    messagingSenderId: '198085913361',
    projectId: 'flutterfirebasedemo-83d73',
    authDomain: 'flutterfirebasedemo-83d73.firebaseapp.com',
    storageBucket: 'flutterfirebasedemo-83d73.appspot.com',
    measurementId: 'G-CSQZ6PJGRE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC8MDiig-mRkP6vMuhxtNNZkBVt1eSZCKo',
    appId: '1:198085913361:android:657483338bccbfac08fab0',
    messagingSenderId: '198085913361',
    projectId: 'flutterfirebasedemo-83d73',
    storageBucket: 'flutterfirebasedemo-83d73.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBMxJQMeJ0sgXTGYLNwm45BxuB2Mbt1cxc',
    appId: '1:198085913361:ios:12bd8db1c899652008fab0',
    messagingSenderId: '198085913361',
    projectId: 'flutterfirebasedemo-83d73',
    storageBucket: 'flutterfirebasedemo-83d73.appspot.com',
    iosBundleId: 'com.example.flutterWidgets',
  );
}