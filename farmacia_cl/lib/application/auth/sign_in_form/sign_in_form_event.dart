part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent{
  const factory SignInFormEvent.emailChanged(String emailStr)= EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr)= PasswordChanged;
  const factory SignInFormEvent.passwordConfirmChanged(String pwd, String pwdConfirmStr)= PasswordConfirmChanged;
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed()= RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed()= SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signinWithGooglePressed()= SignInWithGooglePressed;
  const factory SignInFormEvent.switchMode()= SwitchMode;    
}