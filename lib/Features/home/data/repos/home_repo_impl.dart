import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Either<Failure, List<BookModel>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  Either<Failure, List<BookModel>> fetchNewestBooks() {
    throw UnimplementedError();
  }
}