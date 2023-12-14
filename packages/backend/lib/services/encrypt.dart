// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:crypto/crypto.dart';

class EncryptUtil {
  static String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }
}
