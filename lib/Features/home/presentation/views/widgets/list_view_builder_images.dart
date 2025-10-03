import 'package:bookly_app/Features/home/presentation/manager/fetch_similar_books/fetch_similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/shimmer_you_can_also_like.dart';
import 'package:bookly_app/core/shared_widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushReplacement(
                      AppRouter.kBookDetailsView,
                      extra: state.books[index],
                    );
                  },
                  child: CustomBookImage(
                    padding: EdgeInsets.all(6),
                    imageUrl:
                        state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                        'https://imgs.search.brave.com/KzG9vVcKb7UbgEv--6ejVw8za-60Ahe7lL5GhzMwqaA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NzE2UERKMTJsaEwu/anBn',
                  ),
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
