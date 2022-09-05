import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:our_ecommerce2/screens/sign_in/Models/UserModel.dart';
import 'package:our_ecommerce2/screens/sign_in/Models/user_info.dart';
import 'package:our_ecommerce2/services_config.dart';

class SignInServices {
  logIn(
    String email,
    String password,
  ) async {
    try {
      var response = await http.post(
        Uri.parse('${ServicesConfig.domainName}auth/login'),
        body:
            jsonEncode(<String, String>{'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var user = UserModel.fromJson(body);
        return user;
      } else {
        return null;
      }
    } catch (e) {
      print('wleeeeeeeeeeee');
      return null;
    }
  }
}
