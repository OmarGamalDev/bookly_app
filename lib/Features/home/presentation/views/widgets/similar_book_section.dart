import 'package:bookly_app/Features/home/presentation/views/widgets/list_view_builder_images.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Text(
            "${LocaleKeys.youCanAlsoLike.tr()} : ",
            locale: context.locale,
            style: Styles.textStyle20.copyWith(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 13),
        const ListViewBuilderImages(),
        const SizedBox(height: 40),
      ],
    );
  }
}
