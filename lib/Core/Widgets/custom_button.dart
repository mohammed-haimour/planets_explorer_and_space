import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text,required this.onPressed, this.width , this.align = TextAlign.center , this.style});

  final void Function()? onPressed;
  final String text;
  final double? width;
  final TextAlign align;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: ConstantsVariables.marginSmall,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(text ,textAlign: align)
      ),
    );

  }
}
