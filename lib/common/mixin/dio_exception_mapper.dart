import 'package:clean_architecture_with_riverpod/common/exception/failure.dart';
import 'package:dio/dio.dart';

mixin DioExceptionMapper {
  Failure mapDioExceptionToFailure(DioException e, StackTrace stackTrace) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return Failure(
          message: "Connection timeout. Please try again later.",
          statusCode: 408,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.sendTimeout:
        return Failure(
          message: "Send timeout. Please try again later.",
          statusCode: 408,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.receiveTimeout:
        return Failure(
          message: "Receive timeout. Please try again later.",
          statusCode: 408,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.badResponse:
        return Failure(
          // message: _getErrorMessageForStatusCode(e.response?.statusCode),
          message:
              e.response?.data['message'] ??
              "An unexpected error occurred. Please try again later.",
          statusCode: e.response?.statusCode,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.cancel:
        return Failure(
          message: "Request was cancelled. Please try again later.",
          statusCode: 499,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.badCertificate:
        return Failure(
          message: "Bad certificate. Please try again later.",
          statusCode: 495,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.connectionError:
        return Failure(
          message: "Unable to connect to the server. Please try again later.",
          statusCode: 503,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.unknown:
        return Failure(
          message: "Unknown error occurred. Please try again later.",
          statusCode: 520,
          exception: e,
          stackTrace: stackTrace,
        );
      default:
        return Failure(
          message: "An unexpected error occurred. Please try again later.",
          statusCode: 520,
          exception: e,
          stackTrace: stackTrace,
        );
    }
  }

  // String _getErrorMessageForStatusCode(int? statusCode) {
  //   switch (statusCode) {
  //     case 400:
  //       return "Bad request. Please check your input.";
  //     case 401:
  //       return "Unauthorized. Please check your credentials.";
  //     case 403:
  //       return "Forbidden. You don't have permission to access this resource.";
  //     case 404:
  //       return "Not found. The requested resource could not be found.";
  //     case 498:
  //       return "Invalid token. Please log in again.";
  //     case 500:
  //       return "Internal server error. Please try again later.";
  //     case 502:
  //       return "Bad gateway. Please try again later.";
  //     case 503:
  //       return "Service unavailable. Please try again later.";
  //     case 504:
  //       return "Gateway timeout. Please try again later.";
  //     default:
  //       return "An unexpected error occurred. Please try again later.";
  //   }
  // }
}
