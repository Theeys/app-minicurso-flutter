
import 'package:flutter/cupertino.dart';

class SizeScreen{

  static double height(BuildContext context, {double porcentagem = 100}){
    return MediaQuery.of(context).size.height*(porcentagem/100);
  }

  static double width(BuildContext context, {double porcentagem = 100}){
    return MediaQuery.of(context).size.width*(porcentagem/100);
  }

}
