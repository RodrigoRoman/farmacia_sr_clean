import 'package:farmacia_cl/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:farmacia_cl/application/state_render/bloc/state_renderer_bloc.dart';
import 'package:farmacia_cl/injection.dart';
import 'package:farmacia_cl/presentation/resources/constant_size_values.dart';
import 'package:farmacia_cl/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) =>getIt<SignInFormBloc>(),
      child: LayoutBuilder(builder: (context,dimensions){
        final width = dimensions.maxWidth/AppSize.s1_5;
        final height = dimensions.maxHeight/AppSize.s1;

        bool md = context
              .read<SignInFormBloc>()
              .state
              .logRegMode;
        print('----state logmod---');
        print(md);
        print('---------');
        return BlocConsumer<SignInFormBloc,SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSucessOption.fold(
          () {}, 
          (either) => either.fold((failure){
            failure.maybeMap(
              cancelledByUser:(_){ 
                context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpError('Error', 'Algo ha salido mal'));
              },
              serverError:(e){ 
                context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpError('Imposible conectar', 'Algo ha salido mal'));
              },
              emailAlreadyInUse:(e){ 
                context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpError('Email en uso', 'Algo ha salido mal'));
              },
              invalidEmailAndPasswordCombination:(e){ 
                context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpError('Combinacion equivocada', 'Algo ha salido mal'));
              },
              orElse: (){ 
                context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpError('Error', 'Algo ha salido mal'));
              },
            );
          },
          (_) {
            print('success');
            return null;
          })
          );
      },
      builder:(context,state){
        return Center(
          child: SizedBox(
            width: width,
            height: height,
            child: context
              .read<SignInFormBloc>()
              .state
              .logRegMode?RegisterForm():LoginForm()
          )
        );
      }
        );
      }
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SignInFormState state = context
                .read<SignInFormBloc>().state;
    return  Form(
        autovalidateMode: state.showErrorMessages?AutovalidateMode.always:AutovalidateMode.disabled,
        key:_key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            const EmailTextForm(),
            const PasswordTextForm(),
            ConfirmButton(
              isValid:()=>_key.currentState!.validate(),
              action:()=>context
                .read<SignInFormBloc>()
                .add(const SignInFormEvent.signInWithEmailAndPasswordPressed())
            ),
            const SwitchLogRegButton()
          ]
        ),
      );
  }
}

class RegisterForm extends StatelessWidget {
  RegisterForm({Key? key}) : super(key: key);
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SignInFormState state = context
                .read<SignInFormBloc>().state;
    return Form(
        autovalidateMode: state.showErrorMessages?AutovalidateMode.always:AutovalidateMode.disabled,
        key:_key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            const EmailTextForm(),
            const PasswordTextForm(),
            const ConfirmPasswordTextForm(),
            ConfirmButton(
              isValid:()=>_key.currentState!.validate(),
              action:()=> context
                .read<SignInFormBloc>()
                .add(const SignInFormEvent.registerWithEmailAndPasswordPressed())
            ),
            const SwitchLogRegButton()
          ]
        ),
      );
  }
}

class EmailTextForm extends StatelessWidget {
  const EmailTextForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect:false,
      onChanged: (value){
        context
        .read<SignInFormBloc>()
        .add(SignInFormEvent.emailChanged(value));
      },
      validator: (_)=>
        context
          .read<SignInFormBloc>()
          .state
          .emailAdress
          .value
          .fold((f)=> AppStrings.invalidEmail,
            (_)=>null
          ),
      decoration: const InputDecoration(
        icon:Icon(Icons.email),
        hintText: AppStrings.email,
      ),
    );
  }
}

class PasswordTextForm extends StatelessWidget {
  const PasswordTextForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      obscureText:true,
      onChanged: ((value) => 
        context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.passwordChanged(value))
        ),
      validator: (_)=>
        context
          .read<SignInFormBloc>()
          .state
          .password
          .value
          .fold(
            (f) => f.maybeMap(
                empty:(_)=>AppStrings.isEmpty,
                passwordTooShort:(_)=> AppStrings.tooShort,
                passwordMustContainCapitalLetter: (_)=> AppStrings.capital,
                passwordMustContainSpecialCharacter: (_)=> AppStrings.special,
                passwordMustContainNumber: (_)=>AppStrings.number,
                orElse: () => null,
              ),
            (r) => null
          ),
      decoration: const InputDecoration(
        icon:Icon(Icons.vpn_key),
        hintText: AppStrings.password
        ),
    );
  }
}

class ConfirmPasswordTextForm extends StatelessWidget {
  const ConfirmPasswordTextForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      obscureText:true,
      onChanged: ((value){
        String pwd =
        context
          .read<SignInFormBloc>().state.password.value
            .fold(
              (f) => f.maybeMap(
                  empty:(_)=>AppStrings.isEmpty,
                  passwordDoesNotMatch:(_)=> AppStrings.passwordDoesNotMatch,
                  orElse: () => '',
                ),
              (r) => r
            );
        context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.passwordConfirmChanged(pwd,value));
      }
        ),
      validator: (_)=>
        context
          .read<SignInFormBloc>()
          .state
          .passwordConfirm
          !.value
          .fold(
            (f) => f.maybeMap(
                empty:(_)=>AppStrings.isEmpty,
                passwordDoesNotMatch:(_)=> AppStrings.passwordDoesNotMatch,
                orElse: () => null,
              ),
            (r) => null
          ),
      decoration: const InputDecoration(
        icon:Icon(Icons.vpn_key),
        hintText: AppStrings.password
        ),
    );
  }
}

class ConfirmButton extends StatelessWidget {
  final Function isValid;
  final Function action;
  const ConfirmButton({required this.isValid,required this.action,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: (){
        if(isValid()){
          context
            .read<StateRendererBloc>()
            .add(const StateRendererEvent.popUpLoading('Cargando', 'Espera por favor'));
          action();
        }
        action();
      }, 
      child: const Text(AppStrings.complete)
    );
  }
}

class SwitchLogRegButton extends StatelessWidget {
  const SwitchLogRegButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){context
          .read<SignInFormBloc>()
          .add(const SignInFormEvent.switchMode());
          },
      child:Text(
        context
          .read<SignInFormBloc>()
          .state
          .logRegMode
          ?AppStrings.loginMode:AppStrings.registerMode)
    );
  }
}
