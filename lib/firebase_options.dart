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
    apiKey: 'AIzaSyAC2SnweBNaFIOkqP1RkRyLOvaICX2yrCI',
    appId: '1:492187248552:web:ee5ace08523e970493df9d',
    messagingSenderId: '492187248552',
    projectId: 'restaurant-booking-56b61',
    authDomain: 'restaurant-booking-56b61.firebaseapp.com',
    storageBucket: 'restaurant-booking-56b61.appspot.com',
    measurementId: 'G-L5Q3X8JNN5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYjQ6BnpGQw4Ewz5mgG635wDykGDWsE88',
    appId: '1:492187248552:android:3df5aaa230757b7193df9d',
    messagingSenderId: '492187248552',
    projectId: 'restaurant-booking-56b61',
    storageBucket: 'restaurant-booking-56b61.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCTh5GW2wPDS6OMjigW-tQc0gmxR2dSqfk',
    appId: '1:492187248552:ios:2b9d50d421004d2d93df9d',
    messagingSenderId: '492187248552',
    projectId: 'restaurant-booking-56b61',
    storageBucket: 'restaurant-booking-56b61.appspot.com',
    iosClientId: '492187248552-7kpnusrrf3dgopbqb7frg218sdhiph0r.apps.googleusercontent.com',
    iosBundleId: 'com.example.restaurantBookingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCTh5GW2wPDS6OMjigW-tQc0gmxR2dSqfk',
    appId: '1:492187248552:ios:2b9d50d421004d2d93df9d',
    messagingSenderId: '492187248552',
    projectId: 'restaurant-booking-56b61',
    storageBucket: 'restaurant-booking-56b61.appspot.com',
    iosClientId: '492187248552-7kpnusrrf3dgopbqb7frg218sdhiph0r.apps.googleusercontent.com',
    iosBundleId: 'com.example.restaurantBookingApp',
  );
}
