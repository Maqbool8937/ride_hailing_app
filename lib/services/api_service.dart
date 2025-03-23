import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ride_hailing_app/models/user_register_model.dart';

class ApiService {
  Future<void> registerUser(UserRegistration user) async {
    const String url = "https://ride.fogot.cn/api/register";

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "first_name": user.firstName,
          "last_name": user.lastName,
          "email": user.email,
          "username": user.username,
          "password": user.password,
          "password_confirmation": user.confirmPassword,
          "contact_number": user.contactNumber,
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        print("Registration Successful: ${response.body}");
      } else {
        print("Error: ${response.body}");
      }
    } catch (e) {
      print("Failed to register user: $e");
    }
  }
}
