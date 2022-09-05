import 'package:get/state_manager.dart';
import 'package:our_ecommerce2/screens/sign_in/Models/UserModel.dart';
import 'package:our_ecommerce2/screens/sign_up/models/signup_user_info.dart';
import 'package:our_ecommerce2/screens/sign_up/signUp_services.dart';

class SignUpController extends GetxController {
  var service = SignUpServices();
  UserModel? user;
  signUp() async {
    service.signUp(user!);
  }
}
