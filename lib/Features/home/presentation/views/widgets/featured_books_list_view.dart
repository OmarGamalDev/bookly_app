import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_image_shimmer.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/core/shared_widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksStateSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => FeaturedListViewItem(
                imageUrl:
                    state.books[index].volumeInfo?.imageLinks?.thumbnail ?? '',
              ),
            ),
          );
        } else if (state is FeaturedBooksStateFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return BookImageShimmer();
        }
      },
    );
  }
}
