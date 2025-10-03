import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, this.padding, required this.imageUrl});
  final EdgeInsetsGeometry? padding;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: width * 0.23, vertical: 20),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            image: DecorationImage(
              onError: (exception, stackTrace) => const Icon(Icons.error),
              fit: BoxFit.fill,
              image: CachedNetworkImageProvider(
                 imageUrl,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
