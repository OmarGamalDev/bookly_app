import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

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
            onPressed: () {},
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
