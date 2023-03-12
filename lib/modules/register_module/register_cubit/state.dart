abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterLoadingState extends RegisterStates {}

class RegisterSuccessState extends RegisterStates {}

class RegisterErrorState extends RegisterStates {
  final String error;

  RegisterErrorState(this.error);
}

class ChangePasswordVisibilityState extends RegisterStates {}

class RegisterUserCreateSuccessState extends RegisterStates {}

class RegisterUserCreateErrorState extends RegisterStates {
  final String error;

  RegisterUserCreateErrorState(this.error);
}
