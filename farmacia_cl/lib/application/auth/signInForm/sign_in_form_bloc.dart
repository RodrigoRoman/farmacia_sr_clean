import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:farmacia_cl/domain/auth/auth_failure.dart';
import 'package:farmacia_cl/domain/auth/i_auth_facade.dart';
import 'package:farmacia_cl/domain/auth/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>((event, emit)  {
      emit(state.copyWith(
        emailAdress: EmailAdress(event.emailStr),
        authFailureOrSucessOption: none()
      ));
    });
    on<PasswordChanged>((event, emit)  {
      emit(state.copyWith(
        password: Password(event.passwordStr),
        authFailureOrSucessOption: none()
      ));
    });
    on<RegisterWithEmailAndPasswordPressed>((event,emit){
      _performActionOnAuthFacadeWithEmailAndPassword(_authFacade.registerWithEmailAndPassword);
    }
    );
    on<SignInWithEmailAndPasswordPressed>((event,emit){
      _performActionOnAuthFacadeWithEmailAndPassword(_authFacade.signInWithEmailAndPassword);
    }
    );
    on<SignInWithGooglePressed>((event, emit) async{
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSucessOption: none()
      ));
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSucessOption: some(failureOrSuccess)
      ));
    });
    }
  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future <Either<AuthFailure,Unit>> Function({
        required EmailAdress emailAdress,
        required Password password
      }) forwardedCall
      )async*{
        Either<AuthFailure,Unit>? failureOrSuccess;
        final isEmailValid = state.emailAdress.isValid();
        final isPasswordValid = state.password.isValid();
        if(isEmailValid && isPasswordValid){
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSucessOption: none()
          ));
          failureOrSuccess = await forwardedCall(
            emailAdress: state.emailAdress,
            password: state.password
          );
        }
        emit(state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSucessOption: optionOf(failureOrSuccess),
        ));
      }

}
  




