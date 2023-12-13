// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:backend/response/result.dart';

class YinResponse {
  YinResponse({
    required this.result,
    this.data,
    this.dataList = const [],
  });
  final YinResult? result;
  final Map<String, dynamic>? data;
  final List<Map<String, dynamic>>? dataList;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result?.toMap(),
      'data': data ?? (dataList ?? []).map((x) => x).toList(),
    };
  }
}
