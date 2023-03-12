abstract class ResetPasswordState {}

class ResetPasswordInitialState extends ResetPasswordState{}

class ResetPasswordSuccessState extends ResetPasswordState{}

class ResetPasswordErrorState extends ResetPasswordState{
  final String error;

  ResetPasswordErrorState(this.error);
}