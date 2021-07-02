import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

const baseUrl = "https://loans.amjuuniquemfbng.com";

class APIService {
  Future post(String url, Map data) async {
    url = baseUrl + url;
    String payload = json.encode(data);
    var response = await http.post(url, body: payload, headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    });
    print(json.decode(response.body));
    if (response.statusCode == 201 || response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to retrieve data request');
    }
  }

  Future postWithToken(String url, Map data) async {
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // String token = preferences.getString("token");
    String token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNCwidXNlcm5hbWUiOiJtaW5sb2Fuc25pZ2VyaWFAZ21haWwuY29tIiwiZXhwIjoxNjI3NTA3NTUzLCJlbWFpbCI6Im1pbmxvYW5zbmlnZXJpYUBnbWFpbC5jb20ifQ.k-c-Jll_uN9C0uL7KYc1iR2LIWDPbSA3gm6M79IMtE4';

    print(token);
    url = baseUrl + url;
    String payload = json.encode(data);
    var response = await http.post(url, body: payload, headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": "Bearer $token"
    });
    print(json.decode(response.body));
    if (response.statusCode == 201) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to retrieve data request');
    }
  }

  Future get(String url) async {
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // String token = preferences.getString("token");
    String token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozNCwidXNlcm5hbWUiOiJtaW5sb2Fuc25pZ2VyaWFAZ21haWwuY29tIiwiZXhwIjoxNjI3NTA3NTUzLCJlbWFpbCI6Im1pbmxvYW5zbmlnZXJpYUBnbWFpbC5jb20ifQ.k-c-Jll_uN9C0uL7KYc1iR2LIWDPbSA3gm6M79IMtE4';

    print(token);
    url = baseUrl + url;
    var response =
        await http.get(url, headers: {"Authorization": "Bearer $token"});
    print(json.decode(response.body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed To Load Data From The Internet');
    }
  }
}
