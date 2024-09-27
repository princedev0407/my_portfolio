import 'package:flutter/material.dart';
//This class contains the static methods to determine the screen size and the type of screen (Mobile or Web)
class Responsive{
  // This method checks if the screen width is less than or equal to 600px
  static bool isMobile (BuildContext context){
    return MediaQuery.of(context).size.width <= 600;
  }
  static double widthOfScreen (BuildContext context){
    return MediaQuery.of(context).size.width;
  }
  static double heightOfScreen (BuildContext context){
    return MediaQuery.of(context).size.height;
  }
}