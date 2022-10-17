import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:farmacia_cl/domain/auth/auth_failure.dart';
import 'package:farmacia_cl/domain/auth/i_auth_facade.dart';
import 'package:farmacia_cl/domain/auth/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
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
    on<PasswordConfirmChanged>((event, emit)  {
      emit(state.copyWith(
        passwordConfirm: PasswordConfirm(event.pwd,event.pwdConfirmStr),
        authFailureOrSucessOption: none()
      ));
    });
    on<RegisterWithEmailAndPasswordPressed>((event,emit)async{
      await _performActionOnAuthFacadeWithEmailAndPassword(_authFacade.registerWithEmailAndPassword,emit);
    }
    );
    on<SignInWithEmailAndPasswordPressed>((event,emit)async{
      await _performActionOnAuthFacadeWithEmailAndPassword(_authFacade.signInWithEmailAndPassword,emit);
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
  Future<SignInFormState?> _performActionOnAuthFacadeWithEmailAndPassword(
      Future <Either<AuthFailure,Unit>> Function({
        required EmailAdress emailAdress,
        required Password password
      }) forwardedCall, Emitter emit
      )async{
        print('entered!!! performActionOnAuth');
        Either<AuthFailure,Unit>? failureOrSuccess;
        final isEmailValid = state.emailAdress.isValid();
        final isPasswordValid = state.password.isValid();
        if(isEmailValid && isPasswordValid){
          print('inside valid');
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSucessOption: none()
          ));
          failureOrSuccess = await forwardedCall(
            emailAdress: state.emailAdress,
            password: state.password
          );
        }
        print('Not');
        emit(state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSucessOption: optionOf(failureOrSuccess),
        )
        );
        return null;
      }

}
  




