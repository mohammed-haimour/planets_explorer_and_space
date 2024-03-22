import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planets_explorer/Core/Enums/themes_enum.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Core/Variables/variables.dart';
import 'package:planets_explorer/Core/Widgets/custom_button.dart';
import 'package:planets_explorer/Core/Widgets/custom_text_input.dart';
import 'package:planets_explorer/Features/Register/Data/ApiService/Models/create_user_model.dart';
import 'package:planets_explorer/Features/Register/Presentation/ViewsManager/RegisterCubit/register_cubit.dart';

class SignUpViewForm extends StatefulWidget {
  const SignUpViewForm({super.key});

  @override
  State<SignUpViewForm> createState() => _SignUpViewFormState();
}

class _SignUpViewFormState extends State<SignUpViewForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

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

      child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 14),

              CustomTextInput(
                  textEditingController: nameController,
                  text: "Your Name : ",
                  validator: (value){
                    if(value!.length < 6){
                      return "The Name Should Be More Than 6 Chars.";
                    }
                    else if(value.length > 15){
                      return "The Name Should Be Less Than 15 Chars.";
                    }
                    return null;
                  }
              ),
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
              CustomTextInput(
                onlyNumber: true,
                textEditingController: phoneNumberController,

                text: "Your Phone Number : ",
                textInputType: TextInputType.phone,

                validator: (value){
                  if(value!.length < 8){
                    return "The Phone Number Should Be More Than 8 Chars.";
                  }
                  return null;
                },
              ),
              CustomButton(
                  width: double.infinity ,text: "Continue",
                  onPressed: () {
                    if(nameController.text.isNotEmpty == true && emailController.text.isNotEmpty == true && passwordController.text.isNotEmpty == true && phoneNumberController.text.isNotEmpty == true)
                    {
                      if(formKey.currentState!.validate())
                      {
                        BlocProvider.of<RegisterCubit>(context).createUser(createUserModel: CreateUserModel(name: nameController.text, email: emailController.text, password: passwordController.text, phone: phoneNumberController.text));
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
