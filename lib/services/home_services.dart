import 'dart:convert';

import 'package:bloc_volunteer_service/model/home_screen_model.dart';
import 'package:http/http.dart' as http;

class HomeService {
  static Future<List<HomeServicesModel>> getdata() async {
    //final box = GetStorage();
    try {
      final response = await http
          .get(Uri.parse('https://volunteer.cyberfort.co.in/api/services'));
      print(response.body);
      if (response.statusCode == 200) {
        List<HomeServicesModel> list = parseUsers(response.body);
        return list;
      } else {
        throw Exception('error');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<HomeServicesModel> parseUsers(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<HomeServicesModel>((json) => HomeServicesModel.fromJson(json))
        .toList();
  }
}
