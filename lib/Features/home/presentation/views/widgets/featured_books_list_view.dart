import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_image_shimmer.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/core/shared_widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksStateSuccess) {
          return CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.30,
              enlargeCenterPage: true,
              viewportFraction: 0.5,
              enlargeFactor: 0.25,
              enableInfiniteScroll: true,
              autoPlay: false,
            ),
            items: state.books.map((book) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(
                    context,
                  ).push(AppRouter.kBookDetailsView, extra: book);
                },
                child: FeaturedListViewItem(
                  imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
                  bookModel: book,
                ),
              );
            }).toList(),
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
