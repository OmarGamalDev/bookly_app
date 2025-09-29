import 'package:bookly_app/Features/home/presentation/views/widgets/custom_expansion_tile.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/asset_images.dart';
import 'package:flutter/material.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(AssetImages.logo, height: 180, width: 100),
          ),
          const SizedBox(height: 20),
          CustomExpansionTile(
            icon: Icons.language,
            title: "Language",
            children: [
              ListTile(title: Text("Arabic"), onTap: () {}),
              ListTile(title: Text("English"), onTap: () {}),
            ],
          ),
          const Divider(color: AppColors.whiteColor),
          CustomExpansionTile(
            icon: Icons.brightness_4_outlined,
            title: "Theme",
            children: [
              ListTile(title: const Text("Light Mode"), onTap: () {}),
              ListTile(title: const Text("Dark Mode"), onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
