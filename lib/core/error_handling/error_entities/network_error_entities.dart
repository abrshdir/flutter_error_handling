import 'error_entity.dart';

class SocketErrorEntity implements ErrorEntity {
  SocketErrorEntity(this.error);
  @override
  String get code => 'NO_CONNECTION';
  @override
  String get message => 'Please check your internet connection.';

  @override
  Object error;
}

class BadRequestErrorEntity implements ErrorEntity {
  BadRequestErrorEntity(this.error);
  @override
  String get code => 'BAD_REQUEST';
  @override
  String get message => 'Bad request. Please try again later.';

  @override
  Object error;
}

class ForbiddenErrorEntity implements ErrorEntity {
  ForbiddenErrorEntity(this.error);
  @override
  String get code => 'FORBIDDEN';
  @override
  String get message => 'You do not have access rights.';

  @override
  Object error;
}

class UnauthorisedErrorEntity implements ErrorEntity {
  UnauthorisedErrorEntity(this.error);
  @override
  String get code => 'UNAUTHORIZED';
  @override
  String get message => 'Login is required.';

  @override
  Object error;
}

class InternalServerErrorEntity implements ErrorEntity {
  InternalServerErrorEntity(this.error);
  @override
  String get code => 'INTERNAL_SERVER_ERROR';
  @override
  String get message => 'Internal Server Error please try again later.';

  @override
  Object error;
}

class FetchDataErrorEntity implements ErrorEntity {
  FetchDataErrorEntity(this.error);
  @override
  String get code => 'FAILED_FETCH_DATA';
  @override
  String get message => 'Unable to Fetch data please try again.';

  @override
  Object error;
}
