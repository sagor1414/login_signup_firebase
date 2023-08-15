import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE3ECE7),
  100: Color(0xFFBACFC4),
  200: Color(0xFF8CB09D),
  300: Color(0xFF5D9076),
  400: Color(0xFF3B7858),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF155835),
  700: Color(0xFF114E2D),
  800: Color(0xFF0E4426),
  900: Color(0xFF083319),
});
const int _primaryPrimaryValue = 0xFF18603B;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFF6DFF9C),
  200: Color(_primaryAccentValue),
  400: Color(0xFF07FF57),
  700: Color(0xFF00EC4C),
});
const int _primaryAccentValue = 0xFF3AFF7A;
