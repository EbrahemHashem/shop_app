import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/api/api_consumer.dart';
import 'package:shop_app/core/api/end_points.dart';
import 'package:shop_app/core/errors/exceptions.dart';
import 'package:shop_app/features/login/data/models/login_model/login_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.api) : super(LoginInitial());
  final ApiConsumer api;
  //Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();
  //Sign in email
  TextEditingController signInEmail = TextEditingController();
  //Sign in password
  TextEditingController signInPassword = TextEditingController();

  LoginModel? user;
  signIn() async {
    try {
      emit(LoginLoading());
      final response = await api.post(
        EndPoints.signIn,
        data: {
          ApiKey.email: signInEmail.text,
          ApiKey.password: signInPassword.text,
        },
      );
      user = LoginModel.fromJson(response);
      emit(LoginSuccess());
    } on ServerException catch (e) {
      emit(LoginFailure(errMessage: e.errorModel.errorMessage));
    }
  }
}
