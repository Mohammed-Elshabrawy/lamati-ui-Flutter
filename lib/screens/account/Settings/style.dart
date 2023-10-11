
import 'package:flutter/material.dart';

class AppConsts{
  static const Color primaryColor = Color(0xff0B3FA8);
  static const Color mainColor = Color(0xFFF9F9F9);
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
}
class FontStyle{
  static const WhiteBColor = TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w800 ,);
  static const WhitePrimaryColor = TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700 ,);
  static const SmallWhiteColor = TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w800 ,);
  static const BlueV14SColor = TextStyle(color: AppConsts.primaryColor,fontSize: 14,fontWeight: FontWeight.w500 ,);
  static const BlueVSColor = TextStyle(color: AppConsts.primaryColor,fontSize: 18,fontWeight: FontWeight.w700 ,);
  static const BlueSColor = TextStyle(color: AppConsts.primaryColor,fontSize: 24,fontWeight: FontWeight.w700 ,);
  static const BlueBColor = TextStyle(color: AppConsts.primaryColor,fontSize: 30,fontWeight: FontWeight.w800 ,);
  static const BlueVBColor = TextStyle(color: AppConsts.primaryColor,fontSize: 36,fontWeight: FontWeight.w800 ,);
  static const BlacksColore = TextStyle(color: Color(0xFF000000),fontSize: 14,fontWeight: FontWeight.w500 ,);
  static const BlackBColore = TextStyle(color: Color(0xFF000000),fontSize: 20,fontWeight: FontWeight.w700 ,);
  static const gray = TextStyle(color: Color(0xFF808080),fontSize: 24,fontWeight: FontWeight.w800 ,);

}
class ButtonsStyle{
  static final  whiteButtonStyle =  ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.white),
    shape:MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  );
  static final  BlueButtonStyle =  ButtonStyle(
    backgroundColor: MaterialStateProperty.all(AppConsts.primaryColor),
    shape:MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  );
  static final  SmallBoxStyle = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Colors.white);
}
class TextFiledStyle{
  static const  MainTextFiledStyle = InputDecoration(
    filled: true,
    fillColor: Color(0xFFE1E6F1),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width:5 ,
    color:Color(0xFFC5D4F5) ),
    borderRadius: BorderRadius.all(Radius.circular(15))
    ),
  );
}