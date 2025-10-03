import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_ratting.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookImage(
          imageUrl: book.volumeInfo?.imageLinks?.thumbnail??"",
        ),
        const SizedBox(height: 20),
        Text(
          book.volumeInfo?.title ?? "",
          style: Styles.textStyle30.copyWith(color: AppColors.whiteColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Opacity(
            opacity: 0.7,
            child: Text(
              (book.volumeInfo?.authors?.join(", ")) ?? "",
              style: Styles.textStyle18.copyWith(
                color: AppColors.whiteColor,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 18),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: book.volumeInfo?.ratingsCount ?? 0,
          rating: (book.volumeInfo?.averageRating ?? 0.0).toInt(),
        ),
        const SizedBox(height: 37),
        const BookAction(),
      ],
    );
  }
}
