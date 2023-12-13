// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs

import 'package:backend/configs/constants.dart';

class DataBaseException implements Exception {
  DataBaseException({
    required this.time,
    this.errorCode = Strings.databaseErrorCode,
  });
  final DateTime time;
  final String errorCode;
}
