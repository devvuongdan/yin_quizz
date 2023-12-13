// import 'package:backend/configs/constants.dart';
// import 'package:backend/features/users/model/user.dart';
// import 'package:backend/helpers/database_helper.dart';
// import 'package:postgres/postgres.dart';
// import 'package:uuid/uuid.dart';

// void main() async {
//   final conn = await Connection.open(
//     Endpoint(
//       host: 'localhost',
//       database: 'postgres',
//       username: 'user',
//       password: 'pass',
//     ),
//     settings: const ConnectionSettings(sslMode: SslMode.disable),
//   );
//   final db = PostgresDatabase(connection: conn);
//   final newUser = YinUser(
//     id: const Uuid().v4(),
//     username: '',
//     givenName: 'User',
//     createdAt: DateTime.now(),
//     updateAt: DateTime.now(),
//     updatePwAt: DateTime.now(),
//   );
//   // final r = await db.createTableIfNotExist(
//   //   tableName: 'tablenameX',
//   //   objectToMap: newUser.toJson(),
//   // );
//   // print(r);
// }
