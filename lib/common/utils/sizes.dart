import 'package:flutter/material.dart';

bool isTablet(BuildContext  context){

  return MediaQuery.of(context).size.width>= 480;
}


double getFontSize(BuildContext context,   double size) {
  var width = MediaQuery.of(context).size.width;
  double fontSize=0.0;
   if (width <= 480) {
      fontSize = size-12;
    } else if (width > 480 && width <= 960) {
      fontSize = size-6;
    } else {
      fontSize = size;
    }

    return fontSize;
}

// LayoutBuilder(
//   builder: (_, c) {
//     final width = c.maxWidth;
//     var fontSize = 16.0;
//     if (width <= 480) {
//       fontSize = 16.0;
//     } else if (width > 480 && width <= 960) {
//       fontSize = 22.0;
//     } else {
//       fontSize = 28.0;
//     }