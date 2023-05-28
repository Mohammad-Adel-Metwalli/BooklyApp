import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  Failures(this.errorMessage);
}

class ServerFailures extends Failures {
  ServerFailures(super.errorMessage);

  factory ServerFailures.fromDioError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailures('Connection timed out');

      case DioErrorType.sendTimeout:
        return ServerFailures('Send timed out');

      case DioErrorType.receiveTimeout:
        return ServerFailures('Receive timed out');

      case DioErrorType.badResponse:
        return ServerFailures.fromResponse(
            error.response!.statusCode!, error.response!.data);

      case DioErrorType.cancel:
        return ServerFailures('The request has been cancelled');

      case DioErrorType.connectionError:
        return ServerFailures('Check out your connection');

      case DioErrorType.unknown:
        if (error.message!.contains('SocketException')) {
          return ServerFailures('No internet connection');
        }

        return ServerFailures('Unexpected error, Please tyr again later');

      case DioErrorType.badCertificate:
        return ServerFailures('Incorrect certificate, Please tyr again later');

      default:
        return ServerFailures('Oops there is an error, Please try again');
    }
  }

  factory ServerFailures.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailures(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailures(
          'Your request isn\'t found, Please try again later, $response');
    } else if (statusCode == 500) {
      return ServerFailures('Internal server error, Please try again later');
    } else {
      return ServerFailures('Oops there is an error, Please try again');
    }
  }
}
