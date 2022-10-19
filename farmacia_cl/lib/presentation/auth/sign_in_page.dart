import 'package:farmacia_cl/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:farmacia_cl/application/state_render/bloc/state_renderer_bloc.dart';
import 'package:farmacia_cl/injection.dart';
import 'package:farmacia_cl/presentation/common/widget_elements/buttons.dart';
import 'package:farmacia_cl/presentation/common/widget_elements/image_container.dart';
import 'package:farmacia_cl/presentation/resources/asset_names.dart';
import 'package:farmacia_cl/presentation/resources/color_manager.dart';
import 'package:farmacia_cl/presentation/resources/constant_size_values.dart';
import 'package:farmacia_cl/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        final width = dimensions.maxWidth*AppSizePercents.per70;
        final height = dimensions.maxHeight*AppSizePercents.per90;
        return BlocConsumer<SignInFormBloc,SignInFormState>(
          buildWhen:(previous, current) => (previous.logRegMode!=current.logRegMode)|(previous.showErrorMessages!=current.showErrorMessages),
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
          (val) {
            context
                  .read<SignInFormBloc>().state.logRegMode?
            context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpSuccess('Success', 'Bienvenido!'))
                  :
                  context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpSuccess('Success', 'Usuario registrado correctamente'))
                  ;
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
              .logRegMode?LoginForm():RegisterForm()
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
    return  Form(
        autovalidateMode:AutovalidateMode.disabled,
        key:_key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            const AnimatedImage(animationName: AppAssetNames.femaleUser),
            
            const EmailTextForm(),
            const PasswordTextForm(),
            ConfirmButton(
              isValid:()=>_key.currentState!.validate(),
              action:()=>context
                .read<SignInFormBloc>()
                .add(const SignInFormEvent.signInWithEmailAndPasswordPressed())
            ),
            const RowMediaButtons(),
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
    return Form(
        autovalidateMode: context
                .read<SignInFormBloc>().state.showErrorMessages?AutovalidateMode.always:AutovalidateMode.disabled,
        key:_key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget> [
            const AnimatedImage(animationName: AppAssetNames.maleUser),
            const EmailTextForm(),
            const PasswordTextForm(),
            const ConfirmPasswordTextForm(),
            ConfirmButton(
              isValid:()=>_key.currentState!.validate(),
              action:()=> context
                .read<SignInFormBloc>()
                .add(const SignInFormEvent.registerWithEmailAndPasswordPressed())
            ),
            const RowMediaButtons(),
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
        }else{
          context
            .read<SignInFormBloc>().state.logRegMode?
          context
            .read<StateRendererBloc>()
            .add(const StateRendererEvent.popUpError('Combinacion incorrecta', 'Elija un mail y contraseña validos'))
            :context
            .read<StateRendererBloc>()
            .add(const StateRendererEvent.popUpError('Espacios llenados incorrectamente', 'Asegurese de llenar correctamente los espacios'))
            ;
                      

        }
        action();
      }, 
      child: const Text(AppStrings.complete)
    );
  }
}


class RowMediaButtons extends StatelessWidget{
  const RowMediaButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SplashIconButton(act: (){print('clickeooood');},icon: FontAwesomeIcons.facebookF),
        SplashIconButton(act: (){},icon: FontAwesomeIcons.google)
      ],
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
        !context
          .read<SignInFormBloc>()
          .state
          .logRegMode
          ?AppStrings.loginMode:AppStrings.registerMode,
          style: Theme.of(context).textTheme.subtitle2
          ),
    );
  }
}
