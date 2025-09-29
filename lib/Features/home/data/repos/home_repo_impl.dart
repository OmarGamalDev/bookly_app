import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl({required this.apiService});
  @override
  Either<Failure, List<BookModel>> fetchFeaturedBooks() {
    apiService.get(
      endPoint: "volumes?q=programming",
    );
    throw UnimplementedError();
  }

  @override
  Either<Failure, List<BookModel>> fetchNewestBooks() {
    apiService.get(
      endPoint: "volumes?q=programming",
    );
    throw UnimplementedError();
  }
}