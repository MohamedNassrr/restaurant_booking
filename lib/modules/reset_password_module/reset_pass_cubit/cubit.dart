import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/modules/reset_password_module/reset_pass_cubit/state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {

  ResetPasswordCubit() : super(ResetPasswordInitialState());

  static ResetPasswordCubit get(context) => BlocProvider.of(context);

  void resetUser({
  required String email,
}){
    FirebaseAuth.instance
        .sendPasswordResetEmail(
        email: email,
    ).then((value) {
      emit(ResetPasswordSuccessState());
    }).catchError((error){
      emit(ResetPasswordErrorState(error.toString()));
    });
  }
}