import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BookImageShimmer extends StatelessWidget {
  const BookImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.30,
        enlargeCenterPage: true,
        viewportFraction: 0.5,
        enlargeFactor: 0.25,
        enableInfiniteScroll: false,
        autoPlay: false,
      ),
      itemBuilder: (context, index, realIndex) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        );
      },
    );
  }
}
