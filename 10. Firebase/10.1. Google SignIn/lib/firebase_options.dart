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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9pajSo-ecDBu-REtaiSDUmQS8YCSyQr0',
    appId: '1:588526566851:android:4c7c37bbb1ee6214c39176',
    messagingSenderId: '588526566851',
    projectId: 'gsifdemo',
    storageBucket: 'gsifdemo.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnks_oPUZMFZxDYmzmXQ-z0u7unuweXfc',
    appId: '1:588526566851:ios:6e32e12ad9adc9bac39176',
    messagingSenderId: '588526566851',
    projectId: 'gsifdemo',
    storageBucket: 'gsifdemo.firebasestorage.app',
    androidClientId: '588526566851-ichpiv5kf3np8vul4vqc0hvupgp9nuj2.apps.googleusercontent.com',
    iosClientId: '588526566851-7kfvu7t9s9jdr92uj7qohcbdf5kuh1lp.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterWidgets',
  );

}