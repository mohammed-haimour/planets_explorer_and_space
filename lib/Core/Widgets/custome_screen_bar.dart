import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';

class CustomScreenBar extends StatelessWidget {
  const CustomScreenBar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: ConstantsVariables.paddingMedium,
        alignment: Alignment.centerLeft,
        height: 80,
        child: Text(
            text ,
            style: Theme.of(context).textTheme.headlineSmall)
    );
  }
}
