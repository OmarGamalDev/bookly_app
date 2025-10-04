import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_state.dart';

enum ThemeModeState { light, dark, system }

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeChanged(themeMode: ThemeMode.dark));

  static ThemeCubit get(context) => BlocProvider.of(context);

  ThemeModeState currentTheme = ThemeModeState.dark; 

  void selectTheme(ThemeModeState themeModeState) {
    currentTheme = themeModeState;
    ThemeMode theme;
    switch (currentTheme) {
      case ThemeModeState.light:
        theme = ThemeMode.light;
        break;
      case ThemeModeState.dark:
        theme = ThemeMode.dark;
        break;
      case ThemeModeState.system:
        theme = ThemeMode.system;
        break;
    }
    emit(ThemeChanged(themeMode: theme));
  }
}
