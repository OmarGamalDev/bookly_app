import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/app_styles.dart';
import 'package:bookly_app/core/constants/asset_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AssetImages.star,
          colorFilter: ColorFilter.mode(AppColors.yellowColor, BlendMode.srcIn),
          height: 20,
          width: 20,
        ),
        const SizedBox(width: 10),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(
            color: Colors.white.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}