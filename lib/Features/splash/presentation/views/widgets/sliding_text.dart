import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, child) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              LocaleKeys.readFreeBooks.tr(),
              locale: context.locale,
              textAlign: TextAlign.center,
              style: Styles.logoText,
            ),
          );
        },
      ),
    );
  }
}
