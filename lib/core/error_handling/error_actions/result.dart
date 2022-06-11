import '../error_entities/error_entity.dart';

abstract class Result<T> {}

class Failure<T> implements Result<T> {
  Failure(this.error);
  ErrorEntity error;
}
