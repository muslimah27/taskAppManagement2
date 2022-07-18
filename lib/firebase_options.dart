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
    apiKey: 'AIzaSyBsV8qSTzjgJ06HjHe9hoBKq4hJPvkEdks',
    appId: '1:828053818412:web:8be31a5c8fadffa070d589',
    messagingSenderId: '828053818412',
    projectId: 'app-task-management-a098f',
    authDomain: 'app-task-management-a098f.firebaseapp.com',
    storageBucket: 'app-task-management-a098f.appspot.com',
    measurementId: 'G-B7ZCZX91YQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAe6ecYuA0Bg09kp8S5VDFYQCe3dlOBv7w',
    appId: '1:828053818412:android:e5ddc5beb1ef128670d589',
    messagingSenderId: '828053818412',
    projectId: 'app-task-management-a098f',
    storageBucket: 'app-task-management-a098f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPhVf_CYZUpy7RQ3AQB98mcIQC-CVqk3U',
    appId: '1:828053818412:ios:a68bd8d357f7e0a170d589',
    messagingSenderId: '828053818412',
    projectId: 'app-task-management-a098f',
    storageBucket: 'app-task-management-a098f.appspot.com',
    androidClientId: '828053818412-lkia6g549rpj2nusrfsm1ohs8gaca749.apps.googleusercontent.com',
    iosClientId: '828053818412-0rl7sjnprpqe42vjk3vcdq2gefeu47lq.apps.googleusercontent.com',
    iosBundleId: 'com.example.appTaskManagement',
  );
}
