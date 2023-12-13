import 'package:backend/features/users/controller/user_controller.dart';
import 'package:backend/features/users/datasource/user_datasource.dart';
import 'package:backend/features/users/repository/user_repository.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return (context) async {
    final database = context.read<PostgresDatabase>();
    final datasource = UserDataSource(database);
    final repository = UserRepository(datasource);
    final controller = UserControler(repository);

    return await handler(
      context.provide<UserControler>(() => controller),
    );
  };
}
