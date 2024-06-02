import 'dart:convert';
import 'package:deloitte/models/api_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://192.168.111.1:8000';
 

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

Future<Map<String, dynamic>> login(String email, String regNo, String password) async {
  try {
    var path = Uri.parse('http://192.168.111.1:8000/authentification/api/login');
    var response = await http.post(path, body: {'email': email, 'regNo': regNo, 'password': password});

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to log in: ${response.statusCode} - ${response.body}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
}
