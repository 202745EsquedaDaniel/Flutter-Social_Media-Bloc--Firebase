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
    apiKey: 'AIzaSyAjxdx7SnAJD0EWrm3J3pYQTWIg1qFtYwk',
    appId: '1:957279052563:web:0864ece948c3a13bd970e6',
    messagingSenderId: '957279052563',
    projectId: 'socialapptutorial-noborrar',
    authDomain: 'socialapptutorial-noborrar.firebaseapp.com',
    storageBucket: 'socialapptutorial-noborrar.firebasestorage.app',
    measurementId: 'G-30V3V0G7VP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfPOcVWWn1WHkQMTX2-fstglx25nSWx6U',
    appId: '1:957279052563:android:5c5550251f9f6501d970e6',
    messagingSenderId: '957279052563',
    projectId: 'socialapptutorial-noborrar',
    storageBucket: 'socialapptutorial-noborrar.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCd_QQUveSPvEpgNpXIBLeHg5cpb6E6EYI',
    appId: '1:957279052563:ios:cb3cbc8750519ecfd970e6',
    messagingSenderId: '957279052563',
    projectId: 'socialapptutorial-noborrar',
    storageBucket: 'socialapptutorial-noborrar.firebasestorage.app',
    iosBundleId: 'app.00lar.socialtutorial',
  );
}
