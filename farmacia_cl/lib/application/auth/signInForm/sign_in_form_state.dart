part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAdress emailAdress,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure,Unit>> authFailureOrSucessOption
  }) = _SignInFormState;
  factory SignInFormState.initial() => SignInFormState(
    emailAdress:EmailAdress(''),
    password:Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSucessOption:none()
  );
}
