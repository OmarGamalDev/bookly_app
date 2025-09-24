import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/Logo.png",
        //  color: AppColors.blackColor
         ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: Text(
              "Read Free Books",
              style: AppStyles.logoText,
            ),
          ),
        ),
      ],
    );
  }
}
