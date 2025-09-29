part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState {
  const FeaturedBooksState();
}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksStateLoading extends FeaturedBooksState {}
class FeaturedBooksStateSuccess extends FeaturedBooksState {
  final List books;
  const FeaturedBooksStateSuccess(this.books);
}
class FeaturedBooksStateFailure extends FeaturedBooksState {
  final String errorMessage;
  const FeaturedBooksStateFailure(this.errorMessage);
}
