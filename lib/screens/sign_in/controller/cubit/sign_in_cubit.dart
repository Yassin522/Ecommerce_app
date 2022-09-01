import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  static SignInCubit get(context) => BlocProvider.of(context);

  getEmail(value) {
    emit(
      SignInInitial(email: value),
    );
  }

  getPassword(value) {
    emit(
      SignInInitial(password: value),
    );
  }
}
