import 'package:bookly_app/Features/home/presentation/manager/fetch_similar_books/fetch_similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/shimmer_you_can_also_like.dart';
import 'package:bookly_app/core/shared_widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBuilderImages extends StatelessWidget {
  const ListViewBuilderImages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSimilarBooksCubit, FetchSimilarBooksState>(
      builder: (context, state) {
        if (state is FetchSimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  padding: EdgeInsets.all(6),
                  imageUrl:
                      state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                      '',
                );
              },
              itemCount: state.books.length,
            ),
          );
        } else if (state is FetchSimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return ShimmerYouCanAlsoLike();
        }
      },
    );
  }
}
