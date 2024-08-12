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
        return macos;
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
    apiKey: 'AIzaSyAd_wGmsSqQmdPlcI3Cwx7lJ7FKc_4Gsqw',
    appId: '1:1034576367008:web:1edca4907afec0880fa8c5',
    messagingSenderId: '1034576367008',
    projectId: 'minimalflutterappp',
    authDomain: 'minimalflutterappp.firebaseapp.com',
    storageBucket: 'minimalflutterappp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRb-jI14eCWbok_PtFyJysoehT880xyB0',
    appId: '1:1034576367008:android:6e8db2bd6c1a19680fa8c5',
    messagingSenderId: '1034576367008',
    projectId: 'minimalflutterappp',
    storageBucket: 'minimalflutterappp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDUlPHTJNyfgeJzpyZV8jBH8Dl7hNYy_ng',
    appId: '1:1034576367008:ios:a6b8f66fd671e7900fa8c5',
    messagingSenderId: '1034576367008',
    projectId: 'minimalflutterappp',
    storageBucket: 'minimalflutterappp.appspot.com',
    iosBundleId: 'com.example.socialminiapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDUlPHTJNyfgeJzpyZV8jBH8Dl7hNYy_ng',
    appId: '1:1034576367008:ios:a6b8f66fd671e7900fa8c5',
    messagingSenderId: '1034576367008',
    projectId: 'minimalflutterappp',
    storageBucket: 'minimalflutterappp.appspot.com',
    iosBundleId: 'com.example.socialminiapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAd_wGmsSqQmdPlcI3Cwx7lJ7FKc_4Gsqw',
    appId: '1:1034576367008:web:8b8f40083de71f5a0fa8c5',
    messagingSenderId: '1034576367008',
    projectId: 'minimalflutterappp',
    authDomain: 'minimalflutterappp.firebaseapp.com',
    storageBucket: 'minimalflutterappp.appspot.com',
  );
}