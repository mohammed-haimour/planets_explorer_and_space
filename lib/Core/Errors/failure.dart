import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException error) {
    switch (error.type){

      case DioExceptionType.connectionTimeout:
        return ServerFailure("Time Out !! , Please Try Again Later!");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Time Out !! , Please Try Again Later!");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Time Out !! , Please Try Again Later!");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate , Please Try Again Later!");
      case DioExceptionType.badResponse:
        return ServerFailure.fromRes(error.response!.statusCode!, error.response);
      case DioExceptionType.cancel:
        return ServerFailure("Canceled , Please Try Again Later!");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error , Please Try Again Later!");
      case DioExceptionType.unknown:
        return ServerFailure("Please Check Your Internet Connection , Please Try Again Later!");
      default:
        return ServerFailure(
            "Oops Something Went Wrong (Server Error -- Client Error) , Please Try Again Later!");

    }
  }

  factory ServerFailure.fromRes(int? statusCode, dynamic res) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      print("\n\n\n\n ${res.toString()} --> Err \n\n\n\n");
      print("\n\n\n\n ${res["message"].toString()} --> Err \n\n\n\n");
      return ServerFailure(res["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your Request Not Found , Please Try Again Later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error , Please Try Again Later!");
    } else {
      return ServerFailure(
          "Oops Something Went Wrong (Server Error -- Client Error) , Please Try Again Later!");
    }
  }
}

class CacheFailure extends Failure {
  CacheFailure(super.message);
}

class NetWorkFailure extends Failure {
  NetWorkFailure(super.message);
}
//
//
// switch (e.type) {
// case DioErrorType.connectionTimeout:
// return ServerFailure("Time Out !! , Please Try Again Later!");
// case DioErrorType.sendTimeout:
// return ServerFailure("Send Time Out !! , Please Try Again Later!");
// case DioErrorType.receiveTimeout:
// return ServerFailure("Time Out !! , Please Try Again Later!");
// case DioErrorType.badResponse:
// return ServerFailure.fromRes(e.response!.statusCode!, e.response);
// case DioErrorType.cancel:
// return ServerFailure("Canceled , Please Try Again Later!");
//
// case DioErrorType.badCertificate:
// return ServerFailure("Bad Certificate , Please Try Again Later!");
//
// case DioErrorType.connectionError:
// return ServerFailure("Connection Error , Please Try Again Later!");
// case DioErrorType.unknown:
// return ServerFailure(
// "Please Check Your Internet Connection , Please Try Again Later!");
// default:
// return ServerFailure(
// "Oops Something Went Wrong (Server Error -- Client Error) , Please Try Again Later!");
// }