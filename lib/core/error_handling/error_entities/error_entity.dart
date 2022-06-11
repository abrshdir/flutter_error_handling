abstract class ErrorEntity {
  ErrorEntity(this.error);

  String get code;
  String get message;

  Object error;
}
