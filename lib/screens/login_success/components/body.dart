import 'package:flutter/material.dart';
import 'package:our_ecommerce2/components/default_button.dart';
import 'package:our_ecommerce2/screens/home/home_screen.dart';
import 'package:our_ecommerce2/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4, //40%
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "تم تسجيل الدخول بنجاح",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "الذهاب للصفحة الرئيسية",
              press: () {},
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
