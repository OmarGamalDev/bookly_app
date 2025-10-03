import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/shared_widgets/custom_text_button.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.0),
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
              backgroundColor: AppColors.redColor,
              text: LocaleKeys.free.tr(),
              textStyle: Styles.textStyle20.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              onPressed: () async {},
              borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.circular(16),
                bottomStart: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomTextButton(
              backgroundColor: AppColors.whiteColor,
              text: getText(bookModel),
              textStyle: Styles.textStyle20.copyWith(
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                // Implement your logic for the preview button press
                launchUrlBooks(
                  context,
                  bookModel.volumeInfo?.previewLink ?? '',
                );
              },
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

String getText(BookModel bookModel) {
  if ((bookModel.volumeInfo?.previewLink ?? '').isEmpty) {
    return LocaleKeys.notAvailable.tr();
  } else {
    return LocaleKeys.preview.tr();
  }
}
