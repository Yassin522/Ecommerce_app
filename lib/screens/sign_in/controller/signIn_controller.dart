import 'package:get/state_manager.dart';
import 'package:our_ecommerce2/screens/sign_in/Models/global_user_info.dart';
import 'package:our_ecommerce2/screens/sign_in/Models/user_info.dart';

import '../Models/UserModel.dart';

class SigninController extends GetxController {
  String? email;
  String? password;
  bool remmberMe = false;

  UserModel? user;
  logIn() async {
    print(email);
    print(password);
    print(remmberMe.toString());

    GlobalUserInfo.name = user!.user!.user_name;
    GlobalUserInfo.email = user!.user!.email;
    GlobalUserInfo.phone = user!.user!.number_phone;
    GlobalUserInfo.role = user!.user!.role_id;
    GlobalUserInfo.city = user!.address!.city;
    GlobalUserInfo.token = user!.access_token;
  }
}
