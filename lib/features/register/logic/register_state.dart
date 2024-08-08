abstract class RegisterState {}

class RegisterInitialState extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterSuccessState extends RegisterState {
  String? message;
  RegisterSuccessState({this.message});
}

class RegisterErrorState extends RegisterState {
  String? message;
  RegisterErrorState({this.message});
}
