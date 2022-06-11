import 'package:flutter/material.dart';
import '../error_entities/error_entity.dart';
import 'error_dialog.dart';

Future<void> showErrorDialog(
  BuildContext context,
  ErrorEntity error,
  List<Widget> actions,
) async {
  await showDialog(
    context: context,
    builder: (_) => ErrorDialog(error: error, actions: actions),
  );
}
