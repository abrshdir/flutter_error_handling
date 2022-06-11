import 'error_entity.dart';

class UnknownErrorEntity implements ErrorEntity {
  UnknownErrorEntity(this.error);

  @override
  String get code => 'UNKNOWN_ERROR';
  @override
  String get message => 'Unknown error occurred. Please try again later.';

  @override
  Object error;
}
