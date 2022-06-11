import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_test_project/core/error_handling/error_entities/call_error_controller.dart';
import 'core/error_handling/error_actions/error_dialog_action.dart';
import 'core/error_handling/error_actions/network_error_handlers.dart';
import 'core/error_handling/error_actions/result.dart';
import 'core/error_handling/error_actions/show_error_dialog.dart';

void main() {
  runZoned<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  });
}
CallErrorStore _callError = CallErrorStore();

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Observer(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30.0,
              ),
              // throw error buttons
              ElevatedButton(
                child: const Text('No Exception'),
                onPressed: () => _callError.myCrashingFunction(
                  context,
                  'Hello',
                ),
              ),
              ElevatedButton(
                child: const Text('BadRequestException'),
                onPressed: () => _callError.myCrashingFunction(
                  context,
                  BadRequestException(),
                ),
              ),
              ElevatedButton(
                child: const Text('ForbiddenException'),
                onPressed: () => _callError.myCrashingFunction(
                  context,
                  ForbiddenException(),
                ),
              ),
              ElevatedButton(
                child: const Text('UnauthorisedException'),
                onPressed: () => _callError.myCrashingFunction(
                  context,
                  UnauthorisedException(),
                ),
              ),
              ElevatedButton(
                child: const Text('InternalServerErrorException'),
                onPressed: () => _callError.myCrashingFunction(
                  context,
                  InternalServerErrorException(),
                ),
              ),
              ElevatedButton(
                child: const Text('FetchDataException'),
                onPressed: () => _callError.myCrashingFunction(
                  context,
                  FetchDataException(),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
