import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.close, color: AppColors.whiteColor, size: 35),
          ),
          IconButton(
            onPressed: () {
              launchUrlBooks(context, book.volumeInfo?.previewLink ?? '');
            },
            icon: Icon(
              Icons.remove_red_eye,
              color: AppColors.whiteColor,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
