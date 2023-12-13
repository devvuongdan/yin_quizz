import 'package:backend/configs/constants.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:postgres/postgres.dart';

Handler middleware(Handler handler) {
  return (context) async {
    final conn = await Connection.open(
      AppConstant().endpoint,
      settings: const ConnectionSettings(sslMode: SslMode.disable),
    );

    return await handler(
      context
          .provide<PostgresDatabase>(() => PostgresDatabase(connection: conn)),
    );
  };
}
