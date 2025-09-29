import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/shared_widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.0),
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
              backgroundColor: AppColors.whiteColor,
              text: 'Free Book',
              textStyle: Styles.textStyle20.copyWith(
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomTextButton(
              backgroundColor: AppColors.redColor,
              text: 'preview',
              textStyle: Styles.textStyle20.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
