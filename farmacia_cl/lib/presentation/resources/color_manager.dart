import 'package:flutter/material.dart';

class ColorManager{
  //for light mode
  static Color navyBlue = HexColor.fromHex('#357CE5');
  static Color white = HexColor.fromHex('#FDFFFA');
  static Color peach = HexColor.fromHex('#F9DEC3');
  static Color ligthBlue = HexColor.fromHex('#9CC8F4');
  static Color midBlue = HexColor.fromHex('#7AA6EB');

  //for dark mode
  static Color darkPurple = HexColor.fromHex('#3E2B39');
  static Color midLightBlue = HexColor.fromHex('#8EB6E4');
  static Color purple = HexColor.fromHex('#58154F');
  static Color darkBlue = HexColor.fromHex('#234A7E');
  static Color grey = HexColor.fromHex('#5D686E');


}
extension HexColor on Color{
  static Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll('#','');
    if(hexColorString.length == 6){
      hexColorString = 'FF'+hexColorString;
    }
    return Color(int.parse(hexColorString, radix:16));
  }
}