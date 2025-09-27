import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(
                  scaffoldKey: scaffoldKey,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(6.0),
                child: const FeaturedBooksListView(),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Newest Books",
                  style: Styles.textStyle18.copyWith(
                    color: AppColors.whiteColor,
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: FeaturedBestSellerListView(),
          ),
        ),
      ],
    );
  }
}
