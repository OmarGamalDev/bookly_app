import 'package:bookly_app/Features/home/presentation/views/widgets/custom_expansion_tile.dart';
import 'package:bookly_app/core/theme/theme_cubit.dart';
import 'package:bookly_app/core/utils/asset_images.dart';
import 'package:bookly_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              AssetImages.logo,
              height: 180,
              width: 100,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          CustomExpansionTile(
            icon: Icons.language,
            title: LocaleKeys.language.tr(),
            children: [
              ListTile(
                title: Text(LocaleKeys.arabicLanguage.tr()),
                onTap: () async {
                  await context.setLocale(const Locale('ar'));
                },
              ),
              ListTile(
                title: Text(LocaleKeys.englishLanguage.tr()),
                onTap: () async {
                  await context.setLocale(const Locale('en'));
                },
              ),
            ],
          ),
          const Divider(),
          CustomExpansionTile(
            icon: Icons.brightness_4_outlined,
            title: LocaleKeys.theme.tr(),
            children: [
              ListTile(
                title: Text(LocaleKeys.lightMode.tr()),
                onTap: () {
                  context.read<ThemeCubit>().selectTheme(ThemeModeState.light);
                },
              ),
              ListTile(
                title: Text(LocaleKeys.darkMode.tr()),
                onTap: () {
                  context.read<ThemeCubit>().selectTheme(ThemeModeState.dark);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
