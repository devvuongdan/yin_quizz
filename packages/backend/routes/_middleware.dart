import 'package:backend/configs/constants.dart';
import 'package:backend/exceptions/unauthorized_exception.dart';
import 'package:backend/features/authentication/controller/authentication_controller.dart';
import 'package:backend/features/authentication/datasource/authentication_datasource.dart';
import 'package:backend/features/authentication/repository/authentication_repository.dart';
import 'package:backend/features/tasks/controller/task_controller.dart';
import 'package:backend/features/tasks/datasource/tasks_datasource.dart';
import 'package:backend/features/tasks/repository/task_repository.dart';
import 'package:backend/features/users/controller/user_controller.dart';
import 'package:backend/features/users/datasource/user_datasource.dart';
import 'package:backend/features/users/model/user.dart';
import 'package:backend/features/users/repository/user_repository.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:backend/response/response.dart';
import 'package:backend/response/result.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';

Handler middleware(Handler handler) {
  return (context) async {
    final conn = await Connection.open(
      AppConstant().endpoint,
      settings: const ConnectionSettings(sslMode: SslMode.disable),
    );
    final database = PostgresDatabase(connection: conn);

    final userDataSource = UserDataSource(database);
    final userRepository = UserRepository(userDataSource);
    final userControler = UserControler(userRepository);

    final authenticationDatasource = AuthenticationDatasource(database);
    final authenticationRepository =
        AuthenticationRepository(datasource: authenticationDatasource);
    final authenticationController = AuthenticationController(
      authenticationRepository: authenticationRepository,
      userRepository: userRepository,
    );

    final taskDatasource = TaskDatasource(database);
    final taskRepository = TaskRepository(taskDatasource);
    final taskController = TaskController(taskRepository);
    return await handler(
      context
          .provide<PostgresDatabase>(() => database)
          .provide<AuthenticationController>(() => authenticationController)
          .provide<UserControler>(() => userControler)
          .provide<TaskController>(() => taskController),
    );
  };
}

// Thiếu token or token có vấn đề là trả lỗi ngay
Handler verifyJwt(Handler handler) {
  return (context) async {
    try {
      if (context.request.url.toString().startsWith('auth/') ||
          context.request.url.toString().startsWith('admin/')) {
        return await handler(context);
      }

      final headers = context.request.headers;

      final userDb = await context
          .read<AuthenticationController>()
          .decodeJWT(headers: headers);

      if (userDb.isRight) {
        return handler(
          context.provide<YinUser>(
            () => userDb.right,
          ),
        );
      } else {
        throw UnauthorizedException();
      }
    } catch (e) {
      return Response.json(
        statusCode: 401,
        body: YinResponse(
          result: YinFailure(
            errorCode: 'UnauthorizedException',
            time: DateTime.now(),
            statusCode: 401,
          ),
        ).toMap(),
      );
    }
  };
}
