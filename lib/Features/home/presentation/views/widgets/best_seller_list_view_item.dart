import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/app_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    onError: (exception, stackTrace) => const Icon(Icons.error),
                    image: CachedNetworkImageProvider(
                      'https://images-na.ssl-images-amazon.com/images/I/51Zymoq7UnL._SX325_BO1,204,203,200_.jpg',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Jungle Book',
                  style: Styles.textStyle20.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'by Rudyard Kipling',
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white.withValues(alpha: 0.7),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "19.99 €",
                      style: Styles.textStyle20.copyWith(
                        color: AppColors.whiteColor,
                      ),
                    ),
                    const SizedBox(width: 45),
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    const SizedBox(width: 5),
                    Text(
                      '4.5',
                      style: Styles.textStyle16.copyWith(
                        color: AppColors.whiteColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '(2390)',
                      style: Styles.textStyle14.copyWith(
                        color: Colors.white.withValues(alpha: 0.7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
