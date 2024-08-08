abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  String? message;
  LoginSuccessState({this.message});
}

class LoginErrorState extends LoginState {
  String? message;
  LoginErrorState({this.message});
}
