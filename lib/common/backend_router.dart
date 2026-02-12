import 'package:flutter/foundation.dart';

class BackendRouter {
  static String get route {
    if (kDebugMode) {
      return "http://127.0.0.1:8090";
    } else {
      return "http://127.0.0.1:8090";
    }
  }
}
