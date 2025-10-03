import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;
  Future<void> fetchSearchResult(String query) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchResult(query);
    result.fold(
      (failure) {
        emit(SearchFailure(failure.errMessage));
      },
      (books) {
        emit(SearchSuccess(books));
      },
    );
  }
}
