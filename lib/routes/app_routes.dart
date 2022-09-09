import 'package:get/get.dart';
import 'package:our_ecommerce2/Bindings/signUp_bindings.dart';
import 'package:our_ecommerce2/Bindings/sing_in_binding.dart';
import 'package:our_ecommerce2/screens/sign_in/sign_in_screen.dart';
import 'package:our_ecommerce2/screens/sign_up/sign_up_screen.dart';
import 'package:our_ecommerce2/screens/splash/splash_screen.dart';

import '../screens/login_success/login_success_screen.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/splash';
  static const signin = '/signIn';
  static const signup = '/singup';
  static const succse = '/succse';

  static final routes = [
    GetPage(
      name: INITIAL,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: signin,
      page: () => SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: signup,
      page: () => SignUpScreen(),
      binding: SignUpBindings(),
    ),
    GetPage(
      name: succse,
      page: () => LoginSuccessScreen(),
    ),
  ];
}
