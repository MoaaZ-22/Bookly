import 'package:flutter/material.dart';
import 'fonts_manager.dart';

TextStyle _getTextStyle(FontWeight fontWeight, double fontSize, Color color)
{
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstance.fontFamily,
      fontWeight: fontWeight,
      color: color
  );
}


/// Regular Style
TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color})
{
  return _getTextStyle(FontWeightManger.regular, fontSize, color);
}

/// Light Style
TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color})
{
  return _getTextStyle(FontWeightManger.light, fontSize, color);
}

/// Medium Style
TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color})
{
  return _getTextStyle(FontWeightManger.medium, fontSize, color);
}

/// SimiBold Style
TextStyle getSimiBoldStyle({double fontSize = FontSize.s12, required Color color})
{
  return _getTextStyle(FontWeightManger.semiBold, fontSize, color);
}

/// Bold Style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color})
{
  return _getTextStyle(FontWeightManger.bold, fontSize, color);
}