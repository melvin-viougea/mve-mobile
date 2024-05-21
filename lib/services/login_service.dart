import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../interface/login_interface.dart';
import '../models/user_model.dart';

class LoginService extends ILogin {
  @override
  Future<UserModel?> login(String email, String password) async {
    final api = Uri.parse('https://mve-backend.vercel.app/api/auth/login');
    final response = await http.post(
      api,
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );
    if (response.statusCode == 200) {
      SharedPreferences storage = await SharedPreferences.getInstance();
      final body = json.decode(response.body);
      await storage.setString('TOKEN', body['token']);
      await storage.setString('EMAIL', email);
      return UserModel(email: email, token: body['token']);
    } else {
      return null;
    }
  }

  @override
  Future<UserModel?> getUser() async {
    SharedPreferences storage = await SharedPreferences.getInstance();
    final token = storage.getString('TOKEN');
    final email = storage.getString('EMAIL');
    if (token != null && email != null) {
      return UserModel(email: email, token: token);
    } else {
      return null;
    }
  }

  @override
  Future<bool> logout() async {
    SharedPreferences storage = await SharedPreferences.getInstance();
    final email = storage.getString('EMAIL');
    final token = storage.getString('TOKEN');
    if (email != null && token != null) {
      await storage.remove('TOKEN');
      await storage.remove('EMAIL');
      return true;
    } else {
      return false;
    }
  }
}