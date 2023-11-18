// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'app.dart';
import 'domain/core/configs/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  final appConfig = AppConfig(
    appTitle: 'Lab App - Dev',
    buildFlavor: 'dev',
    nasaApiEndPoint: 'https://api.nasa.gov/planetary/apod',
    nasaApiKey: '4nQEcmfqKZyBgF5VB6pknUioccBzrbmc3ajb6wMy',
    child: Container(),
  );
  appInitializer(appConfig);
}
