import 'package:bookly_app/core/constants/constants_key.dart';
import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';

abstract class Styles {
  static final TextStyle logoText = TextStyle(
    fontSize: 20,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.w400,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    fontFamily: kGtSectraFine,
    letterSpacing: 1.2,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

const TextStyle textStyle = TextStyle();
