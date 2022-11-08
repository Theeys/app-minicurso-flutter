import 'package:flutter/material.dart';

class AppTheme {

  static const Color backgroundColor = Color(0xFFFCFCFC);
  static const Color primaryColor = Color(0xFF005BB2);

  static const Color linkColor = Color(0xFF1976D2);
  static const Color iconColor = Color(0xFF555555);

  static const Color textLightColor = Color(0xFF999999);
  static const Color textMidColor = Color(0xFF555555);
  static const Color textDarkColor = Color(0xFF000000);
  
  static const Color darkBlueText = Color(0xFF253840);
  static const Color darkerBlueText = Color(0xFF17262A);
  static const Color lightBlueText = Color(0xFF4A6572);

  static const TextStyle tituloNoticia = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: lightBlueText
  );

  static const TextStyle corpoNoticia = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: lightBlueText,
  );   

  static const TextStyle link = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: linkColor,
    //decoration: TextDecoration.underline
  );    

  static const TextStyle title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: lightBlueText
  );

}