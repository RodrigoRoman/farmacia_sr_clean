import 'package:farmacia_cl/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';


class CustomTheme {
  static ThemeData get lightTheme { //1
    return ThemeData( //2
    colorScheme:  ColorScheme(
      brightness: Brightness.light, 
      primary: ColorManager.navyBlue, 
      onPrimary: ColorManager.ligthBlue, 
      secondary: ColorManager.peach, 
      onSecondary: ColorManager.midBlue, 
      error: ColorManager.red, 
      onError: ColorManager.ligthBlue, 
      background: ColorManager.ligthBlue, 
      onBackground: ColorManager.ligthBlue, 
      surface: ColorManager.midBlue, 
      onSurface: ColorManager.ligthBlue
    ),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Montserrat', //3
      buttonTheme: ButtonThemeData( // 4
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        // buttonColor:,
      )
    );
  }
  static ThemeData get darkTheme { //1
    return ThemeData( //2
      // primaryColor: CustomColors.purple,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Montserrat', //3
      buttonTheme: ButtonThemeData( // 4
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        // buttonColor: CustomColors.lightPurple,
      )
    );
  }
}