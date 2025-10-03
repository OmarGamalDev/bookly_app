
import 'package:bookly_app/core/utils/asset_images.dart';
import 'package:flutter/material.dart';

class EmptySearchResultView extends StatelessWidget {
  const EmptySearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetImages.searchImage,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.7,
    );
  }
}