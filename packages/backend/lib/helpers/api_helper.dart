// ignore_for_file: public_member_api_docs, avoid_print

import 'package:backend/response/result.dart';
import 'package:either_dart/either.dart';

class APIHelper {
  static Left<YinFailure, T> handleException<T>({
    required Map<Type, int> exceptions,
    required Object e,
    required StackTrace s,
  }) {
    if (!exceptions.keys.contains(e.runtimeType)) {
      print('$e, $s');
    }
    return Left(
      YinFailure(
        time: DateTime.now(),
        errorCode: exceptions.keys.contains(e.runtimeType)
            ? 'Error: ${e.runtimeType}!'
            : 'Un-Handled-Exception!',
        statusCode: exceptions.keys.contains(e.runtimeType)
            ? (exceptions[e.runtimeType] ?? 500)
            : 501,
      ),
    );
  }
}
