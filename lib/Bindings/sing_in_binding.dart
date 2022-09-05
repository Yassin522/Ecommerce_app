import 'package:get/instance_manager.dart';
import 'package:our_ecommerce2/screens/sign_in/controller/signIn_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SigninController());
  }
}
