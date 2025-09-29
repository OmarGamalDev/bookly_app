// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl= "https://www.googleapis.com/books/v1/";
  final Dio dio;
  ApiService({
    required this.dio,
  });
  
}
