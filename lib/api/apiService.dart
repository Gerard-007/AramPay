// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// // import 'package:shared_preferences/shared_preferences.dart';

// import 'package:arampay/models/loginModel.dart';

// class APIService {
//   Future<LoginResponseModel> login(LoginRequestModel loginRequestModel) async {
//     String url = baseUrl + "/api/accounts/";

//     final response = await http.post(url, body: loginRequestModel.toJson());
//     if (response.statusCode == 200 || response.statusCode == 400) {
//       return LoginResponseModel.fromJson(json.decode(response.body));
//     } else {
//       throw Exception('Failed To Send Credentials');
//     }
//   }

// Future <WithdrawalResponseModel> withdrawal(WithdrawalRequestModel withdrawalRequestModel) async {
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//   String token = preferences.getString("token");

//   String url = baseUrl + '/api/transactions/retrieve/withdraw-my-fund/';

//   final response = await http.post(
//       url, body: withdrawalRequestModel.toJson(),
//       headers: {"Authorization": "Bearer $token"});

//   if(response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 400) {
//     return WithdrawalResponseModel.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed To Post Data');
//   }
// }

// Future <RegisterResponseModel> register(RegisterRequestModel registerRequestModel) async {
//   String url = baseUrl + "/api/accounts/register/";

//   final response = await http.post(url, body: registerRequestModel.toJson());
//   print(json.decode(response.body));
//   if(response.statusCode == 201) {
//     return RegisterResponseModel.fromJson(json.decode(response.body));
//   } else {
//     return RegisterResponseModel.fromJson(json.decode(response.body));
//   }
// }

// Future<http.Response> sendDataToServer(String url, String amount, String message) {
//   return http.post(
//     Uri.https(baseUrl, 'url'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'amount': amount,
//       'message': message
//     }),
//   );
// }

// Future post(String url, Map data) async {
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//   String token = preferences.getString("token");
//   print(token);
//   url = baseUrl + url;
//   String payload = json.encode(data);
//   var response = await http.post(url, body: payload, headers: {'Content-Type': 'application/json; charset=UTF-8', "Authorization": "Bearer $token"});
//   print(json.decode(response.body));
//   if(response.statusCode == 201) {
//     return json.decode(response.body);
//   } else {
//     throw Exception('Failed to retrieve data request');
//   }
// }

// Future get(String url) async {
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//   String token = preferences.getString("token");
//   print(token);
//   url = baseUrl + url;
//   var response = await http.get(url, headers: {"Authorization": "Bearer $token"});
//   print(json.decode(response.body));
//   if (response.statusCode == 200 || response.statusCode == 201) {
//     return json.decode(response.body);
//   } else {
//     throw Exception('Failed To Load Data From The Internet');
//   }
// }

// Future getDataBySlug(String url, String slug) async {
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//   String token = preferences.getString("token");
//   url = baseUrl + url + "$slug/";
//   var response = await http.get(url, headers: {"Authorization": "Bearer $token"});
//   print(json.decode(response.body));
//   if (response.statusCode == 200 || response.statusCode == 201) {
//     return json.decode(response.body);
//   } else {
//     throw Exception('Failed To Load Data From The Internet');
//   }
// }

// NetworkImage getUserImage(String imageUrl) {
//   return NetworkImage(imageUrl);
// }
//}
