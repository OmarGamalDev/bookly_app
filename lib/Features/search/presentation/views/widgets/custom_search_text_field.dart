import 'package:bookly_app/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key});
  @override
  final TextEditingController controller = TextEditingController();
  Widget build(BuildContext context) {
    return TextField(
      style: Styles.textStyle20.copyWith(color: AppColors.whiteColor),
      controller: controller,
      decoration: InputDecoration(
        hintText: LocaleKeys.search.tr(),
        hintStyle: TextStyle(color: AppColors.whiteColor),
        filled: true,
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            context.read<SearchCubit>().fetchSearchResult(controller.text);
          },
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      onSubmitted: (value) {
        context.read<SearchCubit>().fetchSearchResult(value);
      },
    );
  }
}
