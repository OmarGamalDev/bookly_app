import 'package:bookly_app/core/shared_widgets/custom_text_button.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
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
              text: LocaleKeys.free.tr(),
              textStyle: Styles.textStyle20.copyWith(
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {},
              borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.circular(16),
                bottomStart: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomTextButton(
              backgroundColor: AppColors.redColor,
              text: LocaleKeys.download.tr(),
              textStyle: Styles.textStyle20.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              onPressed: () {},
              borderRadius: const BorderRadiusDirectional.only(
                topEnd: Radius.circular(16),
                bottomEnd: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
