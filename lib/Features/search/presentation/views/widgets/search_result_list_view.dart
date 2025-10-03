import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is SearchFailure) {
          return Center(child: Text(state.message));
        } else if (state is SearchSuccess) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BestSellerListViewItem(bookModel: state.books[index]);
            },
          );
        }
        return Container();
      },
    );
  }
}
