import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../utils/failure.dart';
import '../helper/const_helper.dart';

class HttpServices {
  static Future<Map<String, dynamic>> doLogin(
      String username, String password) async {
    var client = http.Client();
    Map<String, dynamic> result = {};
    Map<String, String> dataLogin = {
      "username": username,
      "password": password,
    };
    try {
      final response = await client.post(
        Uri.parse(ConstHelper.baseUrl + ConstHelper.authLogin),
        body: jsonEncode(dataLogin),
        headers: {'Content-Type': 'application/json'},
      );
      final body = response.body;
      var hasil = jsonDecode(body);
      result = hasil;
      print(result);
      return result;
    } on SocketException {
      result = {
        "data": Failure(
            message:
                'There is not internet connection, please check your data roaming.')
      };
    } finally {
      client.close();
    }
    return result;
  }
}
