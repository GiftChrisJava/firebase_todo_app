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
    apiKey: 'AIzaSyAzG7bsCvMtMAtlFjQocAg_tUGxm3UCoFA',
    appId: '1:148720435772:web:5efb74aa92d223877bf939',
    messagingSenderId: '148720435772',
    projectId: 'crud-c316a',
    authDomain: 'crud-c316a.firebaseapp.com',
    storageBucket: 'crud-c316a.appspot.com',
    measurementId: 'G-6G7X4TSGWL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVC2cUA6_tPcc6eiwiMBospulmFWGC6Kk',
    appId: '1:148720435772:android:6644a9040b1be5fa7bf939',
    messagingSenderId: '148720435772',
    projectId: 'crud-c316a',
    storageBucket: 'crud-c316a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvEHjEPq1Vrbk9btroJmW-_mN8OUw4BwY',
    appId: '1:148720435772:ios:a944960a2fdb7f1b7bf939',
    messagingSenderId: '148720435772',
    projectId: 'crud-c316a',
    storageBucket: 'crud-c316a.appspot.com',
    iosBundleId: 'com.example.firstapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDvEHjEPq1Vrbk9btroJmW-_mN8OUw4BwY',
    appId: '1:148720435772:ios:a944960a2fdb7f1b7bf939',
    messagingSenderId: '148720435772',
    projectId: 'crud-c316a',
    storageBucket: 'crud-c316a.appspot.com',
    iosBundleId: 'com.example.firstapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAzG7bsCvMtMAtlFjQocAg_tUGxm3UCoFA',
    appId: '1:148720435772:web:ab7b4f07f433868a7bf939',
    messagingSenderId: '148720435772',
    projectId: 'crud-c316a',
    authDomain: 'crud-c316a.firebaseapp.com',
    storageBucket: 'crud-c316a.appspot.com',
    measurementId: 'G-88VDWVWMF2',
  );

}