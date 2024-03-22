import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Functions/functions.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Core/Variables/variables.dart';
import 'package:planets_explorer/Core/Widgets/custom_button.dart';
import 'package:planets_explorer/Core/Widgets/custom_theme_togel.dart';
import 'package:planets_explorer/Features/Register/Presentation/Views/sign_in_view.dart';
import 'package:planets_explorer/Features/Register/Presentation/Views/sign_up_view.dart';

class ChooseThemeViewBody extends StatelessWidget {
  const ChooseThemeViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5,left: 5,right: 5),
              alignment: Alignment.topCenter,
              height: Functions.height(context) / 1.8 ,
              decoration: const BoxDecoration(
                  color: ConstantsVariables.colorBlue,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50) ,bottomRight: Radius.circular(50))
              ),
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50) ,bottomRight: Radius.circular(50)),
                  child: Image.asset( (Variables.isDark) ? "Assets/Images/darkModeExample.png" :  "Assets/Images/lightModeExample.png" )),
            ),
          ],
        ),
        Expanded(
          child: Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  const Spacer(),
                  Text("Chose Your \nTheme" ,style: Theme.of(context).textTheme.headlineLarge,),
                  const Spacer(),
                  const CustomThemeToggle(),
                  Row(
                    children: [
                      Expanded(child: CustomButton(text: "Sign Up",onPressed: (){Functions.replaceTo(context, widget: const SignUpView());} ,)),
                      const SizedBox(width: 10),
                      Expanded(child: CustomButton(text: "Sign In",onPressed: (){Functions.replaceTo(context, widget: const SignInView());})),
                      const SizedBox(height: 30),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}