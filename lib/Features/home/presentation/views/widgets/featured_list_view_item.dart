import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({
    super.key,
    required this.imageUrl,
    required this.bookModel,
  });
  final String imageUrl;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            image: DecorationImage(
              fit: BoxFit.fill,
              onError: (exception, stackTrace) => const Icon(Icons.error),
              image: CachedNetworkImageProvider(imageUrl),
            ),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 6, bottom: 6),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withAlpha(70),
                ),
                child: IconButton(
                  onPressed: () {
                    // Implement your logic for the play button press
                    launchUrlBooks(
                      context,
                      bookModel.volumeInfo?.previewLink ?? '',
                    );
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
