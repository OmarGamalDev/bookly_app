import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/asset_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        SvgPicture.asset(
          AssetImages.star,
          colorFilter: ColorFilter.mode(AppColors.yellowColor, BlendMode.srcIn),
          height: 20,
          width: 20,
        ),
        const SizedBox(width: 6),
        Text(
          '4.5',
          style: Styles.textStyle16.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 9),
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
