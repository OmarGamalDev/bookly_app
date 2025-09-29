import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class ListViewBuilderImages extends StatelessWidget {
  const ListViewBuilderImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBookImage(padding: EdgeInsets.all(6));
        },
        itemCount: 10,
      ),
    );
  }
}
