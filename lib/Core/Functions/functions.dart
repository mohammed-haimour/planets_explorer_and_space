import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Features/Home/Data/ApiService/Model/planets_model.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class Functions{

  // - Sizes
  static double width(BuildContext context) => MediaQuery.of(context).size.width;
  static double height(BuildContext context) => MediaQuery.of(context).size.height;

  // - Navigation
  static void goTo(BuildContext context,{required Widget widget}) => Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  static void replaceTo(BuildContext context,{required Widget widget}) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widget));

  // - Font Sizing
  static double responsiveFontSize(BuildContext context, {required double fontSize}){
    double scaleFactor(BuildContext context){
      double width = MediaQuery.of(context).size.width;
      if(width < 600){
        return width / 400;
      }else if(width < 900){
        return width / 700;
      }else{
        return width / 1000;
      }
    }

    double scaleFactorVariable = scaleFactor(context);
    double responsiveFontSize = scaleFactorVariable * fontSize;

    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.5;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  // - Modal Bottom Sheet
  static Future showBottomSheet(BuildContext context , {required List<Widget> children}){
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        context: context,
        builder: (context) {
          return SafeArea(
            child: Padding(
              padding: ConstantsVariables.paddingNormal,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: children,
              ),
            ),
          );
        }
    );
  }

  // - Go To Url
  static Future<void> goToUrl(BuildContext context,{ required String url}) async {
    if (!await launchUrl(Uri.parse(url))) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Could Not Lunch The Url") , backgroundColor: ConstantsVariables.colorRed));
    }
  }



}