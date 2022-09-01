// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sign_in_cubit.dart';

@immutable
abstract class SignInState {}

class SignInInitial extends SignInState {
  var email;
  var password;
  SignInInitial({
    this.email,
    this.password,
  });
}
