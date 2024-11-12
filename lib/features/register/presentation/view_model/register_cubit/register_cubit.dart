import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/api/api_consumer.dart';
import 'package:shop_app/core/api/end_points.dart';
import 'package:shop_app/core/errors/exceptions.dart';
import 'package:shop_app/features/register/data/models/register_model/register_model.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.api) : super(RegisterInitial());
  final ApiConsumer api;
  //Sign up Form key
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  //Sign up email
  TextEditingController signUpEmail = TextEditingController();
  //Sign up password
  TextEditingController signUpPassword = TextEditingController();
  //Sign up name
  TextEditingController signUpName = TextEditingController();
  // sign up phone
  TextEditingController signUpPhone = TextEditingController();

  RegisterModel? user;
  signUp() async {
    try {
      emit(RegisterLoading());
      final response = await api.post(
        EndPoints.signUp,
        data: {
          ApiKey.email: signUpEmail.text,
          ApiKey.password: signUpPassword.text,
          ApiKey.name: signUpName.text,
          ApiKey.phone: signUpPhone.text,
        },
      );
      user = RegisterModel.fromJson(response);
      emit(RegisterSuccess());
    } on ServerException catch (e) {
      emit(RegisterFailure(errMessage: e.errorModel.errorMessage));
    }
  }
}
