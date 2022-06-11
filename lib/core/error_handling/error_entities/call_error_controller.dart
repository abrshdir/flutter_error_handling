// call function. if failure, handle error
import 'package:flutter/material.dart';
import 'package:flutter_test_project/core/error_handling/error_actions/error_dialog_action.dart';
import 'package:flutter_test_project/core/error_handling/error_actions/network_error_handlers.dart';
import 'package:flutter_test_project/core/error_handling/error_actions/result.dart';
import 'package:flutter_test_project/core/error_handling/error_actions/show_error_dialog.dart';
import 'package:mobx/mobx.dart';

part 'call_error_controller.g.dart';

class CallErrorStore = CallError with _$CallErrorStore;

abstract class CallError with Store {

  @action
  Future myCrashingFunction(BuildContext context, Object value) async {
    final errorEntity = NetworkErrorHandler().getError(value);
    final result = Failure(errorEntity);
    await showErrorDialog(
      context,
      result.error,
      [ErrorDialogActionButton.pop(context)],
    );
  }
}
