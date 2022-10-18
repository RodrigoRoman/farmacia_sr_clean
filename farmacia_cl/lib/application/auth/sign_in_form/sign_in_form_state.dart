part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  factory SignInFormState({
    required EmailAdress emailAdress,
    required Password password,
    PasswordConfirm? passwordConfirm,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool logRegMode,
    required Option<Either<AuthFailure,Unit>> authFailureOrSucessOption
  }) = _SignInFormState;
  factory SignInFormState.initial() => SignInFormState(
    emailAdress:EmailAdress(''),
    password:Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    logRegMode:true,
    passwordConfirm: PasswordConfirm('',''),
    authFailureOrSucessOption:none()
  );
}
