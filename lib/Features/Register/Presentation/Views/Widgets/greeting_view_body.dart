import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Functions/functions.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Core/Widgets/custom_button.dart';
import 'package:planets_explorer/Features/Register/Presentation/Views/choose_theme_view.dart';

class GreetingViewBody extends StatelessWidget {
  const GreetingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: ConstantsVariables.marginMedium,
        child: Column(
          children: [
            Image.asset("Assets/Images/planets3.png" , width: Functions.width(context) / 1.5),
            const SizedBox(height: 60),
             Column(
               children: [
                 Text("To Explore The \nUniverse.", style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: ConstantsVariables.colorWhite),),
                 const SizedBox(height: 30),
                 Text("“The universe is not only stranger than we imagine, it is stranger than we can imagine”", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: ConstantsVariables.colorWhite),),
               ],
             ),
            const Spacer(),
            Row(
              children: [
                Expanded(child: CustomButton(text: "Continue", onPressed: (){
                  Functions.replaceTo(context, widget: const ChooseThemeView());
                })),
              ],
            )
          ],
        ),
      ),
    );
  }
}
