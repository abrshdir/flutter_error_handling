import 'package:flutter/material.dart';
import '../error_entities/error_entity.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    this.error,
    this.actions,
    Key key,
  }) : super(key: key);

  final ErrorEntity error;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('ERROR_CODE: ${error.code}'),
      content: Text(error.message),
      actions: actions,
    );
  }
}
