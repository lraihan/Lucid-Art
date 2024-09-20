import 'package:dicoding_submission/screens/landing.dart';
import 'package:dicoding_submission/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lucid Art Gallery',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: const LandingScreen(),
    );
  }
}
