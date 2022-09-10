import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:our_ecommerce2/components/coustom_bottom_nav_bar.dart';
import 'package:our_ecommerce2/enums.dart';
import 'package:our_ecommerce2/size_config.dart';

import '../../Controller/CartController/HomeController/homeController.dart';
import 'components/body.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
