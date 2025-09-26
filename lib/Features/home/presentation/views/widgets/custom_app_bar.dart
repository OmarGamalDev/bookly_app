import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/asset_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetImages.logo, height: 120, width: 120),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AssetImages.search,
            colorFilter: const ColorFilter.mode(
              AppColors.whiteColor,
              BlendMode.srcIn,
            ),
            height: 30,
            width: 30,
          ),
        ),
      ],
    );
  }
}
