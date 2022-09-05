import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:our_ecommerce2/components/custom_surfix_icon.dart';
import 'package:our_ecommerce2/components/default_button.dart';
import 'package:our_ecommerce2/components/form_error.dart';
import 'package:our_ecommerce2/screens/complete_profile/complete_profile_screen.dart';
import 'package:our_ecommerce2/screens/sign_in/controller/signIn_controller.dart';
import 'package:our_ecommerce2/screens/sign_up/controller/signUp_contoller.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../otp/otp_screen.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  final List<String?> errors = [];
  SignUpController _controller = Get.find<SignUpController>();
  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildmarketFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildaddressFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildphoneFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: true,
      // onSaved: (newValue) => _controller.user.password = newValue,
      onChanged: (value) {},
      decoration: const InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      // onSaved: (newValue) => _controller.user.password = newValue,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.lock),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      //onSaved: (newValue) => _controller.user.email = newValue,
      onChanged: (value) {},
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.email),
      ),
    );
  }

  TextFormField buildmarketFormField() {
    return TextFormField(
      obscureText: true,
      // onSaved: (newValue) => _controller.user.first_name = newValue,
      onChanged: (value) {},
      decoration: const InputDecoration(
        labelText: "Market name",
        hintText: "Market name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.shopping_bag),
      ),
    );
  }

  TextFormField buildaddressFormField() {
    return TextFormField(
      obscureText: true,
//onSaved: (newValue) => _controller.user.address = newValue,
      onChanged: (value) {},
      decoration: const InputDecoration(
        labelText: "Adress",
        hintText: "Adress",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.place),
      ),
    );
  }

  TextFormField buildphoneFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      obscureText: true,
      //   onSaved: (newValue) => _controller.user.phone = newValue,
      onChanged: (value) {},
      decoration: const InputDecoration(
        labelText: "phone number",
        hintText: "Phone number",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.phone),
      ),
    );
  }
}
