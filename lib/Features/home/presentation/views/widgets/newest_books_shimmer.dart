import 'package:bookly_app/Features/home/presentation/views/widgets/newest_books_shimmer_item.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewestBooksShimmer extends StatelessWidget {
  const NewestBooksShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child:  ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
                child: const NewestBooksShimmerItem(),
              );
            },
          ),
        ),
    );
  }
}