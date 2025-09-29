import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                CustomSearchTextField(),
                const SizedBox(height: 30),
                Text(
                  "Search Results",
                  style: Styles.textStyle18.copyWith(
                    color: AppColors.whiteColor,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 20),
                const SearchResultListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
