import 'package:flutter/material.dart';

abstract class ThemeState {
  final ThemeMode themeMode;
  const ThemeState({required this.themeMode});
}

class ThemeChanged extends ThemeState {
  const ThemeChanged({required super.themeMode});
}
