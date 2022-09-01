import 'package:flutter/material.dart';
import 'package:our_ecommerce2/components/coustom_bottom_nav_bar.dart';
import 'package:our_ecommerce2/enums.dart';

class OrdersScreen extends StatelessWidget {
  static String routeName = "/orders";

  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Orders'),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.oreders),
    );
  }
}
