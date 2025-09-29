import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate with ApiServer");
      case DioExceptionType.badResponse:
        return ServerFailure("Bad Response with ApiServer");
      case DioExceptionType.cancel:
        return ServerFailure("Request Cancelled with ApiServer");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error with ApiServer");
      case DioExceptionType.unknown:
        return ServerFailure("Unknown Error with ApiServer");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (response.statusCode == 400 ||
        response.statusCode == 401 ||
        response.statusCode == 403) {
      return ServerFailure(response.data["error"]["message"]);
    } else if (response.statusCode == 404) {
      return ServerFailure("Your request not found, Please try later!");
    } else if (response.statusCode == 500) {
      return ServerFailure("Internal Server error, Please try later!");
    } else {
      return ServerFailure("Something went wrong, Please try later!");
    }
  }
}
