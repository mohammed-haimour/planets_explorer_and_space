import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:starsview/starsview.dart';

class StarsBackground extends StatelessWidget {
  const StarsBackground({super.key, required this.body , this.colors = const[ConstantsVariables.colorBlack, ConstantsVariables.colorBlack]});
  
  final Widget body;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: colors,
                )
            )
        ),
        const StarsView(fps: 100,),
        body
      ],
      );
  }
}