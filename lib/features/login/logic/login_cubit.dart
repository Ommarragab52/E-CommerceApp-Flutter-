import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/networking/api_services.dart';
import '../data/models/login_request.dart';
import '../data/repository/login_repository.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());
  var formKey = GlobalKey<FormState>();
  var emailColtroller = TextEditingController();
  var passwordColtroller = TextEditingController();

  void signIn() {
    emit(LoginLoadingState());
    var loginRepository = LoginRepository(apiServices: ApiServices());
    loginRepository
        .signIn(
      loginRequest: LoginRequest(
          email: emailColtroller.text, password: passwordColtroller.text),
    )
        .then((response) {
      if (response.status == true) {
        emit(LoginSuccessState(message: response.message));
      } else {
        emit(LoginErrorState(message: response.message));
      }
    }).catchError((error) {
      emit(LoginErrorState(message: error.toString()));
    });
  }
}
