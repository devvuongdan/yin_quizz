// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs

class InvalidInputException implements Exception {
  InvalidInputException({
    required this.time,
    required this.errorCode,
  });
  final DateTime time;
  final String errorCode;
}
