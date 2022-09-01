import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_ecommerce2/screens/sign_in/controller/cubit/sign_in_cubit.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: BlocConsumer<SignInCubit, SignInState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = SignInCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text("Sign In"),
            ),
            body: Body(cubit: cubit),
          );
        },
      ),
    );
  }
}
