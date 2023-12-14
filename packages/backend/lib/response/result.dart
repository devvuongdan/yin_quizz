import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class YinResult {
  final int statusCode;
  final DateTime time;
  YinResult({
    required this.statusCode,
    required this.time,
  });
  Map<String, dynamic> toMap() {
    return {};
  }
}

class YinFailure extends YinResult {
  final String errorCode;

  YinFailure({
    required this.errorCode,
    required super.time,
    required super.statusCode,
  });

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'statusCode': statusCode,
      'time': time.toIso8601String(),
    };
  }

  String toJson() => json.encode(toMap());
}

class YinSuccess extends YinResult {
  final String code;
  YinSuccess({
    required super.time,
    this.code = 'Success',
    super.statusCode = 200,
  });

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'status_code': statusCode,
      'time': time.toIso8601String(),
    };
  }
}
