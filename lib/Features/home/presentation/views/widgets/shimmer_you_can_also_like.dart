import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerYouCanAlsoLike extends StatelessWidget {
  const ShimmerYouCanAlsoLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}

