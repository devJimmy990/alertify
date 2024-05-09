import 'dart:convert';
import 'package:http/http.dart' as http;

class Service {
  static Service? service;
  Service._();

  static Service? getInstance() => service ?? Service._();

  getRequest({required String url}) async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception("Connection Error ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Connection Error $e");
    }
  }
}
