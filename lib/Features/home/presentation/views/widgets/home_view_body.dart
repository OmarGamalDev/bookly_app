import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: const CustomAppBar()),
          SliverToBoxAdapter(child: const FeaturedBooksListView()),
          SliverToBoxAdapter(child: const SizedBox(height: 50)),
          SliverToBoxAdapter(
            child: Text(
              "Best Seller",
              style: Styles.textStyle18.copyWith(color: AppColors.whiteColor),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 20)),
          SliverToBoxAdapter(child: FeaturedBestSellerListView()),
        ],
      ),
    );
  }
}


