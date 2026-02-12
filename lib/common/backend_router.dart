import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:lapponia_travel_frontend/common/error_handling.dart';

class BackendRouter {
  static String get route {
    if (kDebugMode) {
      return "http://127.0.0.1:8090";
    } else {
      return "http://127.0.0.1:8090";
    }
  }

  static Future<void> post(
    String endpoint,
    Map<String, String> header,
    String body,
  ) async {
    final path = "$route/$endpoint";
    final url = Uri.parse(path);
    try {
      BasicLogger().info("body: $body");
      final response = await http.post(url, headers: header, body: body);
      if (response.statusCode != 200) {
        throw Exception("Error in the request: ${response.body}");
      }
    } catch (e, s) {
      BasicLogger().error("Couldn't send post", error: e, stackTrace: s);
      rethrow;
    }
  }
}
