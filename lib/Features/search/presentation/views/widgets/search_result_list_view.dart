import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/newest_books_shimmer.dart';
import 'package:bookly_app/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/empty_search_result.dart';
import 'package:bookly_app/core/shared_widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return EmptySearchResultView();
        } else if (state is SearchLoading) {
          return NewestBooksShimmer();
        } else if (state is SearchSuccess) {
          if (state.books.isEmpty) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Center(
                child: Text(
                  LocaleKeys.noResultsFound.tr(),
                  locale: context.locale,
                  style: Styles.textStyle30.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            );
          }
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushReplacement(
                    AppRouter.kBookDetailsView,
                    extra: state.books[index],
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16, top: 8),
                  child: BestSellerListViewItem(bookModel: state.books[index]),
                ),
              );
            },
          );
        } else if (state is SearchFailure) {
          return Center(child: CustomErrorWidget(errMessage: state.message));
        } else {
          return Container();
        }
      },
    );
  }
}
