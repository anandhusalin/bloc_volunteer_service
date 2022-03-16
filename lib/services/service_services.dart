import 'dart:convert';
import 'package:bloc_volunteer_service/model/service_response.dart';
import 'package:bloc_volunteer_service/model/services_model.dart';
import 'package:http/http.dart' as http;

class ServicesService {
  Future<ServiceResponse> signup(ServiceModel serviceModel) async {
    final response = await http.post(
      Uri.parse('https://volunteer.cyberforttech.com/api/register'),
      body: jsonEncode(
        serviceModel.toJson(),
      ),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
    );
    print(response.body);
    var data = jsonDecode(response.body);

    if (response.statusCode == 200 && data['status'] == null) {
      return ServiceResponse.fromJson(data);
    } else {
      return ServiceResponse.fromJson(
          {'data': null, 'message': data['message'], 'status': 'status'});
    }
  }
}
