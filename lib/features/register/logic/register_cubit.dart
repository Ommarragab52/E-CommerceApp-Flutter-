import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_services.dart';
import '../data/models/register_request.dart';
import '../data/reopository/register_repository.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitialState());
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  void signUp() {
    emit(RegisterLoadingState());
    var registerRepository = RegisterRepository(apiServices: ApiServices());
    registerRepository
        .signUp(
      registerRequest: RegisterRequest(
          name: nameController.text,
          email: emailController.text,
          password: passwordController.text,
          phone: phoneController.text),
    )
        .then(
      (response) {
        if (response.status == true) {
          emit(RegisterSuccessState(message: response.message));
        } else {
          emit(RegisterErrorState(message: response.message));
        }
      },
    ).catchError((error) {
      emit(RegisterErrorState(message: error.toString()));
    });
  }
}
