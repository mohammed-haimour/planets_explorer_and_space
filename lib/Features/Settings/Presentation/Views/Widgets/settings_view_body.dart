import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Core/Widgets/custom_button.dart';
import 'package:planets_explorer/Core/Widgets/custom_text_input.dart';
import 'package:planets_explorer/Core/Widgets/custome_screen_bar.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ConstantsVariables.paddingMedium,
      child: Column(
        children: [
          const CustomScreenBar(text: "Profile"),
          const CustomTextInput(text: "Your Name"),
          const CustomTextInput(text: "Your Phone Number"),
          CustomButton(text: "Save",width: double.infinity ,onPressed: (){}),
          const CustomScreenBar(text: "Account"),
          CustomButton(text: "Reset Password",width: double.infinity ,onPressed: (){}),
          CustomButton(text: "Change Account",width: double.infinity ,onPressed: (){}),
          CustomButton(text: "Sign Out",width: double.infinity ,onPressed: (){}),
        ],
      ),
    );
  }
}
