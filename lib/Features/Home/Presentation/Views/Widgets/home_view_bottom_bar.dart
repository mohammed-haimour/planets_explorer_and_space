import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Functions/functions.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Core/Widgets/custome_screen_bar.dart';
import 'package:planets_explorer/Core/Widgets/custom_theme_togel.dart';
import 'package:planets_explorer/Features/Register/Presentation/Views/greeting_view.dart';
import 'package:planets_explorer/Features/Register/Presentation/Views/sign_in_view.dart';
import 'package:planets_explorer/Features/Settings/Presentation/Views/settings_view.dart';

class HomeViewBottomBar extends StatelessWidget {
  const HomeViewBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: ConstantsVariables.radiusLarge,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200.withOpacity(0.2)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(icon: const Icon(Icons.logout) , onPressed: (){
                Functions.replaceTo(context, widget: const GreetingView());
              }),
              IconButton(icon: const Icon(Icons.change_circle) , onPressed: (){
                Functions.replaceTo(context, widget: const SignInView());
              }),
              IconButton(icon: const Icon(Icons.color_lens) , onPressed: (){
                Functions.showBottomSheet(context,
                    children: [
                      const CustomScreenBar(text: "Theme"),
                      const CustomThemeToggle()
                    ]
                );
              }),
              IconButton(icon: const Icon(Icons.settings) , onPressed: (){
                Functions.goTo(context, widget: const SettingsView());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
