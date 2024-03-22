import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Variables/variables.dart';

import 'package:planets_explorer/Core/Widgets/custom_button.dart';
import 'package:planets_explorer/Features/Register/Presentation/ViewsManager/AppThemeCubit/app_theme_cubit.dart';

class CustomThemeToggle extends StatefulWidget {
  const CustomThemeToggle({super.key});

  @override
  State<CustomThemeToggle> createState() => _CustomThemeToggleState();
}

class _CustomThemeToggleState extends State<CustomThemeToggle> {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
              text: Variables.isDark ?"Light Mode" : "Dark Mode" ,
              onPressed: () {
                AppThemeCubit.get(context).changeTheme();
                setState(() {
                  Variables.isDark = !Variables.isDark;
                });
              }
          )
        ),
      ],
    );
  }
}
