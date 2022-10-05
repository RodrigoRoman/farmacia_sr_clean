import 'package:farmacia_cl/application/auth/signInForm/sign_in_form_bloc.dart';
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
        state.authFailureOrSucessOption.fold(
          () {}, 
          (either) => either.fold((failure){
            print('failed');
          },
          (_) => null)
          );
      },
      builder:(context,state)=> Form(
        key:_key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:const <Widget>  [
            EmailTextForm(),
            PasswordTextForm(),
            ConfirmButton()
          ]
        ),
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
      onChanged: (value) => 
        context
        .read<SignInFormBloc>()
        .add(SignInFormEvent.emailChanged(value)),
      validator: (_)=>
        context
          .read<SignInFormBloc>()
          .state
          .emailAdress
          .value
          .fold((f)=>f.maybeMap(
            invalidEmail: (_)=>'Invalid Email',
            orElse:() => null,
            ),
            (_)=>null
          )
          ,
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
                passwordTooShort:(_)=> 'Contraseña demasiado corta',
                passwordMustContainCapitalLetter: (_)=> 'Incluya una letra mayuscula',
                passwordMustContainSpecialCharacter: (_)=> 'Incluya un caracter especail',
                passwordMustContainNumber: (_)=>'Incluya por lo menos un numero',
                orElse: () => null,
              ),
            (r) => null
          )
        ,




      decoration: const InputDecoration(
        icon:Icon(Icons.vpn_key),
        hintText: AppStrings.password
        ),
    );
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: (){
        context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.registerWithEmailAndPasswordPressed());
      }, 
      child: const Text(AppStrings.completar)
    );
  }
}