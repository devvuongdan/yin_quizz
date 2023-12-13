// ignore_for_file: public_member_api_docs

import 'package:dotenv/dotenv.dart';
import 'package:postgres/postgres.dart';

class AppConstant {
  AppConstant();
  static final env = DotEnv(includePlatformEnvironment: true)..load();
  final Endpoint endpoint = Endpoint(
    host: env['HOST'] ?? '',
    database: env['DATABASE'] ?? '',
    username: env['DATABASE_USER'] ?? '',
    password: env['DATABASE_PW'] ?? '',
  );

  //docker run --detach --name yin_quizz -p 127.0.0.1:5432:5432 -e POSTGRES_USER=user -e POSTGRES_DATABASE=database -e POSTGRES_PASSWORD=pass postgres
}

class Strings {
  static const databaseErrorCode = 'db-err';
  static const unknownErrorCode = 'unknown-err';
  static const invalidUsernameErrorCode = 'invalid-username';
  static const invalidPwErrorCode = 'invalid-password';
  static const notFoundErrorCode = 'not-found';
}
