import 'package:flutter/material.dart';
import 'fonts_manager.dart';

TextStyle _getTextStyle(FontWeight fontWeight, double fontSize, Color color, String fontFamily)
{
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color
  );
}


/// Regular Style
TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color})
{
  return _getTextStyle(FontWeightManger.regular, fontSize, color, FontConstance.fontFamily);
}

TextStyle getSectraRegularStyle({double fontSize = FontSize.s30, required Color color})
{
  return _getTextStyle(FontWeightManger.regular, fontSize, color, FontConstance.fontFamily2);
}

/// Light Style
TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color})
{
  return _getTextStyle(FontWeightManger.light, fontSize, color, FontConstance.fontFamily);
}

/// Medium Style
TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color})
{
  return _getTextStyle(FontWeightManger.medium, fontSize, color, FontConstance.fontFamily);
}

/// SimiBold Style
TextStyle getSimiBoldStyle({double fontSize = FontSize.s12, required Color color})
{
  return _getTextStyle(FontWeightManger.semiBold, fontSize, color, FontConstance.fontFamily);
}

/// Bold Style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color})
{
  return _getTextStyle(FontWeightManger.bold, fontSize, color, FontConstance.fontFamily);
}