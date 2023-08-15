import 'package:flutter/material.dart';
import 'package:hiredo/screens/wellcome_screens.dart';
import 'package:get/get.dart';
import 'utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData(brightness: Brightness.dark, primarySwatch: primary),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: primary,
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 300),
      home: const WellcomeScreen(),
    );
  }
}
