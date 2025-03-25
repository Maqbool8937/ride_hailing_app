import 'dart:convert';

import 'package:ride_hailing_app/controllers/utils/api_constants.dart';
import 'package:ride_hailing_app/controllers/utils/snackbar.dart';
import 'package:http/http.dart' as http;

class AuthApis {
  Future<bool> userSignupMethod({
    required String email,
    required String firstName,
    required String lastName,
    required String password,
    required String confirmPassword,
    required String phoneNumber,
  }) async {
    final url = Uri.parse("$baseUrl$signupEp?first_name=$firstName&last_name=$lastName &email=$email&username=$firstName &password= $password&password_confirmation=$confirmPassword&contact_number=$phoneNumber&gender=Male");
    final headers = {"Content-Type": "application/json"};
    final response = await http.post(
      url,
      headers: headers,
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> decodedBody = jsonDecode(response.body);

      showSuccessSnackbar(decodedBody['message']);
      return true;
    } else {
      print('other response code');

      Map<String, dynamic> decodedBody = jsonDecode(response.body);
      print(decodedBody);

      showErrorSnackbar("${decodedBody["message"]}");
      return false;
    }
  }

  Future<bool> loginMethod({
    required String email,
    required String password,
  }) async {
    final url = Uri.parse("$baseUrl$loginEp?email=$email&password=$password&user_type=rider");
    final headers = {"Content-Type": "application/json"};
    final response = await http.post(url, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> decodedBody = jsonDecode(response.body);
      // await MySharedPreferences.setBool('isLoggedIn', true);
      // await MySharedPreferences.setString(token, decodedBody['token']);
      // var tokenn = await MySharedPreferences.getString(
      //   token,
      // );

      // print('Token is: $tokenn');

      showSuccessSnackbar("Login sucessfully");
      return true;
    } else {
      print('other response code');
      print(response.statusCode);

      Map<String, dynamic> decodedBody = jsonDecode(response.body);
      showErrorSnackbar("${decodedBody["message"]}");
      return false;
    }
  }

  // Future<bool> forgotPasswordMethod({
  //   required String email,
  // }) async {
  //   final url = Uri.parse("$baseUrl$forgetPassword");
  //   final headers = {"Content-Type": "application/json"};
  //   final encodedBody = jsonEncode({
  //     "email": email,
  //   });
  //   final response = await http.post(url, headers: headers, body: encodedBody);
  //   if (response.statusCode == 200 || response.statusCode == 201) {
  //     Map<String, dynamic> decodedBody = jsonDecode(response.body);

  //     showSuccessSnackbar(decodedBody['message']);
  //     return true;
  //   } else {
  //     print('other response code');
  //     print(response.statusCode);

  //     Map<String, dynamic> decodedBody = jsonDecode(response.body);
  //     showErrorSnackbar("${decodedBody["non_field_errors"]}");
  //     return false;
  //   }
  // }
}
