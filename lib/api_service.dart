import 'dart:convert';
import 'package:deloitte/models/api_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://127.0.0.1:8000';

  Future<List<ApiModel>> getApi() async {
    List<ApiModel> personList = [];
    var path = Uri.parse('$baseUrl/api');
    var response = await http.get(path);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      for (Map<String, dynamic> item in data) {
        personList.add(ApiModel.fromJson(item));
      }
    }

    return personList;
  }

  Future<Map<String, dynamic>> login(String email, int regNo, String password) async {
    var path = Uri.parse('$baseUrl/api/login');
    var response = await http.post(path, body: {'email': email, 'regNo': regNo, 'password': password});

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to log in');
    }
  }
}
