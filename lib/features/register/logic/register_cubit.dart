import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/helpers/constants.dart';
import 'package:flutter_ecommerce_app/core/helpers/shared_pref_helper.dart';
import 'package:flutter_ecommerce_app/core/networking/dio_factory.dart';

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
          updateUserToken(response.data?.token);
          emit(RegisterSuccessState(message: response.message));
        } else {
          emit(RegisterErrorState(message: response.message));
        }
      },
    ).catchError((error) {
      emit(RegisterErrorState(message: error.toString()));
    });
  }

  void updateUserToken(String? token) async {
    if (token != null) {
      await SharedPref.setSecuredString(SheardPrefKeys.userToken, token);
      DioFactory.addTokenToHeaderAfterLogin(token);
      debugPrint('User Token Updated!');
    } else {
      debugPrint('User Token is Nullable!');
    }
  }
}
