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
        return windows;
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
    apiKey: 'AIzaSyBUfhgA6gFIKwa9AwOs1wHbQMQXi0Kdz_k',
    appId: '1:74047467211:web:1fb47b57e6063faf96354e',
    messagingSenderId: '74047467211',
    projectId: 'store-d96fa',
    authDomain: 'store-d96fa.firebaseapp.com',
    databaseURL: 'https://store-d96fa-default-rtdb.firebaseio.com',
    storageBucket: 'store-d96fa.appspot.com',
    measurementId: 'G-M7K46ZKYD8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuRN_VpCfQpJW2_IAnHzxLGTGNUsPD8ZM',
    appId: '1:74047467211:android:96f4cb7a8660741196354e',
    messagingSenderId: '74047467211',
    projectId: 'store-d96fa',
    databaseURL: 'https://store-d96fa-default-rtdb.firebaseio.com',
    storageBucket: 'store-d96fa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASp0VUxv6IHZRGBVNmgPSFjNfacAwEEoY',
    appId: '1:74047467211:ios:72a84b427887522296354e',
    messagingSenderId: '74047467211',
    projectId: 'store-d96fa',
    databaseURL: 'https://store-d96fa-default-rtdb.firebaseio.com',
    storageBucket: 'store-d96fa.appspot.com',
    iosBundleId: 'com.example.lect2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBUfhgA6gFIKwa9AwOs1wHbQMQXi0Kdz_k',
    appId: '1:74047467211:web:5948bd3ea0c8f76e96354e',
    messagingSenderId: '74047467211',
    projectId: 'store-d96fa',
    authDomain: 'store-d96fa.firebaseapp.com',
    databaseURL: 'https://store-d96fa-default-rtdb.firebaseio.com',
    storageBucket: 'store-d96fa.appspot.com',
    measurementId: 'G-8F2C2N44Y3',
  );
}
