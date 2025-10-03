import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_ratting.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/constants_key.dart';
import 'package:bookly_app/generated/locale_keys.g.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  onError: (exception, stackTrace) => const Icon(Icons.error),
                  image: CachedNetworkImageProvider(
                    bookModel.volumeInfo?.imageLinks?.thumbnail ??
                        'https://imgs.search.brave.com/KzG9vVcKb7UbgEv--6ejVw8za-60Ahe7lL5GhzMwqaA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NzE2UERKMTJsaEwu/anBn',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Text(
                    bookModel.volumeInfo?.title ?? 'No Title',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20.copyWith(
                      color: AppColors.whiteColor,
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  (bookModel.volumeInfo?.authors?.isNotEmpty ?? false)
                      ? bookModel.volumeInfo!.authors!.join(", ")
                      : "Unknown Author",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      LocaleKeys.free.tr(),
                      locale: context.locale,
                      style: Styles.textStyle20.copyWith(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.3),
                    BookRating(
                      count: bookModel.volumeInfo?.ratingsCount ?? 0,
                      rating: (bookModel.volumeInfo?.averageRating ?? 0.0)
                          .toInt(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
