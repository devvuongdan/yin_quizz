import 'package:dart_frog/dart_frog.dart';

import '../_middleware.dart';

Handler middleware(Handler handler) {
  return handler.use(verifyJwt);
}
