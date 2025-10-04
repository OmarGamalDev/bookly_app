import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_state.dart';

enum ThemeModeState { light, dark, system }

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeInitial());

  static ThemeCubit get(context) => BlocProvider.of(context);

  void selectTheme(ThemeModeState themeModeState) {
    switch (themeModeState) {
      case ThemeModeState.light:
        emit(const ThemeChanged(ThemeMode.light));
        break;
      case ThemeModeState.dark:
        emit(const ThemeChanged(ThemeMode.dark));
        break;
      case ThemeModeState.system:
        emit(const ThemeChanged(ThemeMode.system));
        break;
    }
  }
}
