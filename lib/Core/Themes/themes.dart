import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Functions/functions.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';

abstract class Themes{

  static ThemeData light(BuildContext context){
    return ThemeData(
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: ConstantsVariables.colorWhiteSmoke
      ),
      scaffoldBackgroundColor: ConstantsVariables.colorWhiteSmoke,
      brightness: Brightness.light,
      textTheme: TextTheme(
        bodySmall: TextStyle(color: ConstantsVariables.colorBlack ,fontSize: Functions.responsiveFontSize(context, fontSize: 14)),
        bodyMedium: TextStyle(color: ConstantsVariables.colorBlack ,fontSize: Functions.responsiveFontSize(context, fontSize: 16)),
        bodyLarge: TextStyle(color: ConstantsVariables.colorBlack ,fontSize: Functions.responsiveFontSize(context, fontSize: 20)),
        headlineSmall: TextStyle(color: ConstantsVariables.colorBlack ,fontSize: Functions.responsiveFontSize(context, fontSize: 30) ,fontWeight: FontWeight.w600),
        headlineMedium: TextStyle(color: ConstantsVariables.colorBlack ,fontSize: Functions.responsiveFontSize(context, fontSize: 40) ,fontWeight: FontWeight.w600),
        headlineLarge: TextStyle(color: ConstantsVariables.colorBlack ,fontSize: Functions.responsiveFontSize(context, fontSize: 50) ,fontWeight: FontWeight.w600),
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStatePropertyAll(TextStyle(color: ConstantsVariables.colorBlack ,fontSize: 16)),
          overlayColor: MaterialStatePropertyAll(ConstantsVariables.colorBlue),
          backgroundColor: MaterialStatePropertyAll(ConstantsVariables.colorBlack),
          shadowColor: MaterialStatePropertyAll(ConstantsVariables.colorBlue),
          foregroundColor: MaterialStatePropertyAll(ConstantsVariables.colorWhiteSmoke),
          padding: MaterialStatePropertyAll( ConstantsVariables.paddingNormal),
        )
      ),
      iconTheme: const IconThemeData(
        color: ConstantsVariables.colorWhite
      )
    );
  }

  static ThemeData dark(BuildContext context){
    return ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: ConstantsVariables.colorLightBlack
        ),
        scaffoldBackgroundColor: ConstantsVariables.colorLightBlack,
        brightness: Brightness.dark,
        textTheme: TextTheme(
          bodySmall: TextStyle(color: ConstantsVariables.colorWhiteSmoke ,fontSize: Functions.responsiveFontSize(context, fontSize: 14)),
          bodyMedium: TextStyle(color: ConstantsVariables.colorWhiteSmoke ,fontSize:  Functions.responsiveFontSize(context, fontSize: 16)),
          bodyLarge: TextStyle(color: ConstantsVariables.colorWhiteSmoke ,fontSize:  Functions.responsiveFontSize(context, fontSize: 20)),
          headlineSmall: TextStyle(color: ConstantsVariables.colorWhiteSmoke ,fontSize:  Functions.responsiveFontSize(context, fontSize: 30) ,fontWeight: FontWeight.w600),
          headlineMedium: TextStyle(color: ConstantsVariables.colorWhiteSmoke ,fontSize:  Functions.responsiveFontSize(context, fontSize: 40) ,fontWeight: FontWeight.w600),
          headlineLarge: TextStyle(color: ConstantsVariables.colorWhiteSmoke ,fontSize:  Functions.responsiveFontSize(context, fontSize: 50) ,fontWeight: FontWeight.w600),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
              textStyle: MaterialStatePropertyAll(TextStyle(color: ConstantsVariables.colorTransparentBlack ,fontSize: 16)),
              backgroundColor: MaterialStatePropertyAll(ConstantsVariables.colorBlack),
              overlayColor: MaterialStatePropertyAll(ConstantsVariables.colorBlue),
              shadowColor: MaterialStatePropertyAll(ConstantsVariables.colorWhite),
              foregroundColor: MaterialStatePropertyAll(ConstantsVariables.colorWhiteSmoke),
              padding: MaterialStatePropertyAll( ConstantsVariables.paddingNormal),
            )
        ),
        iconTheme: const IconThemeData(
            color: ConstantsVariables.colorWhiteSmoke
        )
    );
  }

}