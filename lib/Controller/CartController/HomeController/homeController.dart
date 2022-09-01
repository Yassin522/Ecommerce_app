import 'package:get/state_manager.dart';
import 'package:our_ecommerce2/screens/cart/cart_screen.dart';
import 'package:our_ecommerce2/screens/home/home_screen.dart';

class HomeController extends GetxController {
  var pageList = [
    HomeScreen(),
    CartScreen(),
  ].obs;
}
