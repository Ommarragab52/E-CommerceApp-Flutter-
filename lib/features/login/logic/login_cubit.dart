import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/helpers/constants.dart';
import 'package:flutter_ecommerce_app/core/helpers/shared_pref_helper.dart';
import 'package:flutter_ecommerce_app/core/networking/dio_factory.dart';
import '../data/models/login_request.dart';
import '../data/repository/login_repository.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository loginRepository;
  LoginCubit(this.loginRepository) : super(LoginInitialState());

  var formKey = GlobalKey<FormState>();
  var emailColtroller = TextEditingController();
  var passwordColtroller = TextEditingController();

  void signIn() {
    emit(LoginLoadingState());
    loginRepository
        .signIn(
      loginRequest: LoginRequest(
          email: emailColtroller.text, password: passwordColtroller.text),
    )
        .then((response) {
      if (response.status == true) {
        updateUserToken(response.data?.token);
        emit(LoginSuccessState(message: response.message));
      } else {
        emit(LoginErrorState(message: response.message));
      }
    }).catchError((error) {
      emit(LoginErrorState(message: error.toString()));
    });
  }

  void updateUserToken(String? token) async {
    if (token != null) {
      await SharedPref.setSecuredString(SharedPrefKeys.userToken, token);
      DioFactory.addTokenToHeaderAfterLogin(token);
      debugPrint('User Token Updated!');
    } else {
      debugPrint('User Token is Nullable!');
    }
  }
}
