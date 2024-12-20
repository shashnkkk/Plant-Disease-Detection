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
    apiKey: 'AIzaSyCwcoseBKmizAHTs-AR62VJeHju35SQo5c',
    appId: '1:462586528073:web:339280a94b44f7fab6da98',
    messagingSenderId: '462586528073',
    projectId: 'plant-4fdac',
    authDomain: 'plant-4fdac.firebaseapp.com',
    storageBucket: 'plant-4fdac.firebasestorage.app',
    measurementId: 'G-Z86CTJPXEY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1mvivneciagGSIwyJE5QcKM-Y4fqsmI0',
    appId: '1:462586528073:android:97793e831d73533bb6da98',
    messagingSenderId: '462586528073',
    projectId: 'plant-4fdac',
    storageBucket: 'plant-4fdac.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJl4y3YLNeO_t7m_pv3uIw9wKIx_ae5lw',
    appId: '1:462586528073:ios:61b3b3fe156bb6c9b6da98',
    messagingSenderId: '462586528073',
    projectId: 'plant-4fdac',
    storageBucket: 'plant-4fdac.firebasestorage.app',
    iosBundleId: 'com.example.plantdiseasedetector',
  );
}
