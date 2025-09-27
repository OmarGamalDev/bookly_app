import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/asset_images.dart';
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
          ExpansionTile(
            leading: Icon(Icons.language),
            title: Text("Language"),
            children: [
              ListTile(title: Text("Arabic"), onTap: () {}),
              ListTile(title: Text("English"), onTap: () {}),
            ],
          ),
          const Divider(color: AppColors.whiteColor),
          ExpansionTile(
            leading: const Icon(Icons.brightness_4_outlined),
            title: const Text("Theme"),
            children: [
              ListTile(title: const Text("Light"), onTap: () {}),
              ListTile(title: const Text("Dark"), onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
