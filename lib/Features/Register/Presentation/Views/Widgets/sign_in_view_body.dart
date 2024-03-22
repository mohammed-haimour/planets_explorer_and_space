import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Functions/functions.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Core/Widgets/stars_background.dart';
import 'package:planets_explorer/Features/Register/Presentation/Views/Widgets/sign_in_view_form.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: Functions.height(context),
        child: StarsBackground(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                        "Get In Your Account" ,
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: ConstantsVariables.colorWhiteSmoke)
                    ),
                  ),
                ),
                const SignInViewForm()
              ]
          ),
        ),
      
      ),
    );
  }
}
