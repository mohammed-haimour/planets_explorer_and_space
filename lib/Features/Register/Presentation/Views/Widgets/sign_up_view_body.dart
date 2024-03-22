import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planets_explorer/Core/Functions/functions.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Core/Widgets/custom_loading.dart';
import 'package:planets_explorer/Core/Widgets/stars_background.dart';
import 'package:planets_explorer/Features/Home/Presentation/Views/home_view.dart';
import 'package:planets_explorer/Features/Register/Presentation/Views/Widgets/sign_up_view_form.dart';
import 'package:planets_explorer/Features/Register/Presentation/ViewsManager/RegisterCubit/register_cubit.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   return BlocConsumer<RegisterCubit, RegisterState>(
     listener: (context, state) {
       if(state is RegisterSuccess){
         ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text(state.msg,style: const TextStyle(color: ConstantsVariables.colorWhite),) , backgroundColor: ConstantsVariables.colorDarkBlue ,duration: const Duration(seconds: 5),),);
         Functions.replaceTo(context, widget: const HomeView());

       }
       else if(state is RegisterFailure){
         ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text(state.msg) , backgroundColor: ConstantsVariables.colorRed ,duration: const Duration(seconds: 5),),);
       }
     },
     builder: (context, state) {
       if(state is RegisterLoading){
         return const CustomLoading();
       }
       else{
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
                          "Create Your Account",
                          style: Theme
                              .of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                              color: ConstantsVariables.colorWhiteSmoke)
                      ),
                    ),
                  ),
                     const SignUpViewForm()
                   ]
               ),
             ),
           ),
         );
       }
       },
   );
  }
}