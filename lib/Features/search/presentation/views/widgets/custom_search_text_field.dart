import 'package:bookly_app/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: LocaleKeys.search.tr(),
        hintStyle: TextStyle(color: AppColors.whiteColor),
        filled: true,
        suffixIcon: Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      onChanged: (value)  {
        BlocProvider.of<SearchCubit>(context).fetchSearchResult(value);
      },
    );
  }
}
