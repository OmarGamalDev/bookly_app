import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetImages.logo, height: 150, width: 120),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, color: AppColors.whiteColor, size: 30),
        ),
      ],
    );
  }
}
