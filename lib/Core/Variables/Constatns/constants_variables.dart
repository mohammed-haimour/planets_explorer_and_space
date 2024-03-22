import 'package:flutter/material.dart';

abstract class ConstantsVariables{

  // - App Colors
  static const Color colorBlack = Colors.black;
  static const Color colorLightBlack = Color.fromRGBO(10, 10, 10, 1);
  static const Color colorTransparentBlack = Color.fromRGBO(10, 10, 10, 0.5);
  static const Color colorWhite = Colors.white;
  static const Color colorWhiteSmoke = Color.fromRGBO(229, 229, 229, 1);
  static const Color colorTransparentWhite = Color.fromRGBO(229, 229, 229, 0.5);
  static const Color colorRed = Color.fromRGBO(185, 0, 0, 1.0);
  static const Color colorTransparentBlue = Color.fromRGBO(8, 21, 189, 0.26);
  static const Color colorBlue = Colors.blue;
  static const Color colorDarkBlue = Color.fromRGBO(8, 21, 189, 1.0);
  static const Color colorDarkOrange = Color.fromRGBO(228, 97, 0, 1);
  static const Color colorTransparentOrange = Color.fromRGBO(
      255, 123, 29, 0.25882352941176473);
  static const Color colorDarkGreen = Color.fromRGBO(4, 130, 0, 1);
  static const Color colorLightGreen = Color.fromRGBO(33, 213, 27, 1.0);
  static const Color colorTransparentGreen = Color.fromRGBO(
      7, 133, 1, 0.22745098039215686);
  static const Color colorDarkPurple = Color.fromRGBO(111, 0, 101, 1);
  static const Color colorTransparentPurple = Color.fromRGBO(
      153, 42, 243, 0.25882352941176473);
  static const Color colorDarkRed = Color.fromRGBO(111, 0, 0, 1.0);
  static const Color colorTransparentRed = Color.fromRGBO(
      187, 18, 18, 0.25882352941176473);

  // - App Margins
  static const EdgeInsets marginSmall = EdgeInsets.all(5);
  static const EdgeInsets marginMedium = EdgeInsets.all(15);
  static const EdgeInsets marginLarge = EdgeInsets.all(30);

  // - App Paddings
  static const EdgeInsets paddingSmall = EdgeInsets.all(10);
  static const EdgeInsets paddingNormal = EdgeInsets.all(15);
  static const EdgeInsets paddingMedium = EdgeInsets.all(20);
  static const EdgeInsets paddingLarge = EdgeInsets.all(30);

  // - App Border Radius
  static BorderRadius radiusSmall = BorderRadius.circular(10);
  static BorderRadius radiusMedium = BorderRadius.circular(25);
  static BorderRadius radiusLarge = BorderRadius.circular(50);

  // - Hive Boxes
  static const planetsBox = "planetsBox";
  static const userBox = "userBox";
}