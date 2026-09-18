import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:send_log/core/di/service_locator.dart';
import 'package:send_log/firebase_options.dart';
import 'package:send_log/send_log.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  setupServiceLocator();

  runApp(const SendLog());
}
