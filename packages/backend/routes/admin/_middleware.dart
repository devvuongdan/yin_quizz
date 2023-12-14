import 'package:backend/helpers/database_helper.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return (context) async {
    final database = context.read<PostgresDatabase>();

    return handler(
      context.provide<PostgresDatabase>(() => database),
    );
  };
}
