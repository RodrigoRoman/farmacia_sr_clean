import 'package:farmacia_cl/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:farmacia_cl/application/state_render/bloc/state_renderer_bloc.dart';
import 'package:farmacia_cl/injection.dart';
import 'package:farmacia_cl/presentation/auth/sign_in_page.dart';
import 'package:farmacia_cl/presentation/common/state_renderer/app_state_renderer.dart';
import 'package:farmacia_cl/presentation/resources/const_values.dart';
import 'package:farmacia_cl/presentation/resources/constant_size_values.dart';
import 'package:farmacia_cl/presentation/resources/string_manager.dart';
import 'package:farmacia_cl/presentation/resources/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'presentation/common/widget_elements/popup_dialog.dart';

// import 'firebase_options.dart';



void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // GetIt getIt = GetIt.instance;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: CustomTheme.lightTheme,
      home: 
      BlocProvider(
      create:(context) =>getIt<StateRendererBloc>(),
      child:Scaffold(
        body: BlocConsumer<StateRendererBloc,StateRendererState>(
          listener: (context, state) {
            if(popStateRender.contains(state.stateRender)){
              dismissDialog(context);
              showPopUp(context,state.stateRender,state.message);
            }else{
              dismissDialog(context);
            }
          },
          builder:(context,state){
            Size size = MediaQuery.of(context).size;
            if(fullStateRender.contains(state.stateRender)){
              dismissDialog(context);
              return SizedBox(
                width: size.width*AppSizePercents.per100,
                height: size.height*AppSizePercents.per100,
                child: StateRenderer(
                  stateRendererType: state.stateRender,
                  message: state.message,
                  retryActionFunction: state.retryAction,
                ),
              );
            }else{
              dismissDialog(context);
              return SizedBox(
                width: size.width*AppSizePercents.per100,
                height: size.height*AppSizePercents.per100,
                child: AuthPage()
              );
            }
          }
      )
        )
      )
      );
  }
}

