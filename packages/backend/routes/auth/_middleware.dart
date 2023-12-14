import 'package:backend/features/authentication/controller/authentication_controller.dart';
import 'package:backend/features/authentication/datasource/authentication_datasource.dart';
import 'package:backend/features/authentication/repository/authentication_repository.dart';
import 'package:backend/features/users/datasource/user_datasource.dart';
import 'package:backend/features/users/repository/user_repository.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return (context) async {
    final database = context.read<PostgresDatabase>();
    final userDatasource = UserDataSource(database);
    final authDatasource = AuthenticationDatasource(database);
    final userRepository = UserRepository(userDatasource);
    final authenticationRepositoty = AuthenticationRepository(
      datasource: authDatasource,
    );
    final controller = AuthenticationController(
      userRepository: userRepository,
      authenticationRepository: authenticationRepositoty,
    );

    return await handler(
      context.provide<AuthenticationController>(() => controller),
    );
  };
}
