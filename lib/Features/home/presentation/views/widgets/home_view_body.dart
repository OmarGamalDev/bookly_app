import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedBooksListView(),
          const SizedBox(height: 50),
          Text(
            "Best Seller",
            style: Styles.textStyle18.copyWith(color: AppColors.whiteColor),
          ),
          const SizedBox(height: 20),
          FeaturedBestSellerListView(),
        ],
      ),
    );
  }
}

class FeaturedBestSellerListView extends StatelessWidget {
  const FeaturedBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return BestSellerListViewItem();
        },
      ),
    );
  }
}
