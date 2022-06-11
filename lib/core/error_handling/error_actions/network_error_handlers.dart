import 'dart:io';
import '../error_entities/common_error_entities.dart';
import '../error_entities/error_entity.dart';
import '../error_entities/network_error_entities.dart';
class NetworkErrorHandler implements ErrorHandler {
  @override
  ErrorEntity getError(Object error) {
    switch (error.runtimeType) {
      case SocketException:
        return SocketErrorEntity(error);
      case BadRequestException:
        return BadRequestErrorEntity(error);
      case ForbiddenException:
        return ForbiddenErrorEntity(error);
      case UnauthorisedException:
        return UnauthorisedErrorEntity(error);
      case FetchDataException:
        return FetchDataErrorEntity(error);
      case InternalServerErrorException:
        return InternalServerErrorEntity(error);
      default:
        return UnknownErrorEntity(error);
    }
  }
}

abstract class ErrorHandler {
  ErrorEntity getError(Object error);
}

class BadRequestException implements Exception {}

class ForbiddenException implements Exception {}

class UnauthorisedException implements Exception {}

class InternalServerErrorException implements Exception {}

class FetchDataException implements Exception {}
