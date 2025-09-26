import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/core/constants/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedBestSellerListView extends StatelessWidget {
  const FeaturedBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return BestSellerListViewItem();
        },
      ),
    );
  }
}
