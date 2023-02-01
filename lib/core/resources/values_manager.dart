import 'package:flutter/cupertino.dart';


class AppValues
{
  static const v_1 = -1.0;
  static const v0_59 = 0.59;
  static const v0_55 = 0.55;
  static const v0_50 = 0.50;
  static const v0_5 = 0.5;
  static const v0_4 = 0.4;
  static const v0_36 = 0.36;
  static const v0_28 = 0.28;
  static const v0_15 = 0.15;
  static const v0 = 0.0;
  static const v1 = 1.0;
  static const v2 = 2;
  static const v3 = 3.0;
  static const v4 = 4.0;
  static const v6 = 6.0;
  static const v8 = 8.0;
  static const v9 = 9.0;
  static const v10 = 10.0;
  static const v12 = 12.0;
  static const v14 = 14.0;
  static const v15 = 15.0;
  static const v16 = 16.0;
  static const v16_1 = 16.1;
  static const v18 = 18.0;
  static const v20 = 20.1;
  static const v24 = 24.1;
  static const v25 = 25.1;
  static const v30 = 30.1;
  static const v43 = 43.0;
  static const v75 = 75.0;
  static const v100 = 100.0;
  static const durationV200 = 200;
  static const durationV250 = 250;
  static const duration500 = 500;
  static const imageAspectRatio = 2.6 / 3.8;
  static const bestSellerAspectRatio = 2.6 / 3.9;
}


class ResponsiveValues
{
  static  double mediaQueryWidth(context ,double width) => MediaQuery.of(context).size.width * width;
  static  double mediaQueryHeight(context ,double height) => MediaQuery.of(context).size.width * height;
}