import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Enums/themes_enum.dart';
import 'package:planets_explorer/Core/Functions/functions.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Core/Variables/variables.dart';
import 'package:planets_explorer/Core/Widgets/custom_button.dart';
import 'package:planets_explorer/Core/Widgets/custom_text_input.dart';
import 'package:planets_explorer/Features/Home/Presentation/Views/home_view.dart';

class SignInViewForm extends StatefulWidget {
  const SignInViewForm({super.key});

  @override
  State<SignInViewForm> createState() => _SignInViewFormState();
}

class _SignInViewFormState extends State<SignInViewForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: ConstantsVariables.paddingMedium,
      decoration: BoxDecoration(
          color: (Variables.currentTheme == ThemesEnum.dark) ? ConstantsVariables.colorLightBlack : ConstantsVariables.colorWhiteSmoke,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50)
          )
      ),

      child:
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 14),

                CustomTextInput(
                    textEditingController: emailController,

                    text: "Your Email : ",
                    textInputType: TextInputType.emailAddress,
                    validator: (value){
                      final bool emailValid =
                      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if(emailValid == false) {
                        return "Please Enter a Correct Email";
                      }

                      return null;
                    }),
                CustomTextInput(text: "Your Password : ",
                  textEditingController: passwordController,

                  validator: (value){
                    if(value!.length < 10){
                      return "The Password Should Be More Than 10 Chars.";
                    }
                    return null;
                  },

                ),
                CustomButton(
                    width: double.infinity ,text: "Continue",
                    onPressed: (){

                      if(emailController.text.isNotEmpty == true && passwordController.text.isNotEmpty == true)
                      {
                        if(formKey.currentState!.validate())
                        {
                          Functions.replaceTo(context, widget: const HomeView());
                        }
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please Fill The Fields") , backgroundColor: ConstantsVariables.colorRed));
                      }
                    }
                ),

                const SizedBox(height: 14),
              ],
            ),
          ),
    );
  }
}
