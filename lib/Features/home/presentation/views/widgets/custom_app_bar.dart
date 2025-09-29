import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/app_router.dart';
import 'package:bookly_app/core/constants/asset_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: SvgPicture.asset(
            AssetImages.barsStaggered,
            colorFilter: const ColorFilter.mode(
              AppColors.whiteColor,
              BlendMode.srcIn,
            ),
            height: 30,
            width: 30,
          ),
        ),
        Image.asset(AssetImages.logo, height: 120, width: 120),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
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
