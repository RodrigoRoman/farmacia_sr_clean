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
        final height = dimensions.maxHeight/AppSize.s3;
        return Center(
          child: SizedBox(
            width: width,
            height: height,
            child:LoginForm()
          )
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
    return BlocConsumer<SignInFormBloc,SignInFormState>(
      listener: (context, state) {

        print('error messages');
        // print(state.);
        state.authFailureOrSucessOption.fold(
          () {}, 
          (either) => either.fold((failure){
            context
            .read<StateRendererBloc>()
            .add(const StateRendererEvent.fullErrorSreen('Error', 'Algo ha salido mal'));
          },
          (_) {
            print('success');
            return null;
          })
          );
      },
      builder:(context,state){
        print(state.showErrorMessages);
        return Form(
        autovalidateMode: state.showErrorMessages?AutovalidateMode.always:AutovalidateMode.disabled,
        key:_key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            const EmailTextForm(),
            const PasswordTextForm(),
            ConfirmButton(isValid:()=>_key.currentState!.validate())
          ]
        ),
      );
  }
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
            (r) =>null
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
  const ConfirmButton({required this.isValid,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: (){
        if(isValid()){
          context
            .read<StateRendererBloc>()
            .add(const StateRendererEvent.popUpLoading('Cargando', 'Espera por favor'));
        }
        context
          .read<SignInFormBloc>()
          .add(const SignInFormEvent.signInWithEmailAndPasswordPressed());
        
      }, 
      child: const Text(AppStrings.complete)
    );
  }
}
