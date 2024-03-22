import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({super.key, required this.text, this.validator , this.textInputType = TextInputType.text , this.textEditingController , this.onlyNumber = false});

  final String text;
  final String? Function(String?)? validator;
  final TextInputType textInputType;
  final TextEditingController? textEditingController;
  final bool onlyNumber ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          const SizedBox(height: 5),
          TextFormField(
            inputFormatters: (onlyNumber) ? [FilteringTextInputFormatter.digitsOnly] : [],
            controller: textEditingController,
            keyboardType: textInputType ,
            validator: validator,
            decoration: InputDecoration(
                contentPadding: ConstantsVariables.paddingMedium,
                border: OutlineInputBorder(
                    borderRadius: ConstantsVariables.radiusMedium
                )
            )
          )
        ],
      ),
    );
  }
}
