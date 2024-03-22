import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planets_explorer/Core/Functions/service_locator.dart';
import 'package:planets_explorer/Features/Register/Data/register_data.dart';
import 'package:planets_explorer/Features/Register/Presentation/Views/Widgets/sign_up_view_body.dart';
import 'package:planets_explorer/Features/Register/Presentation/ViewsManager/RegisterCubit/register_cubit.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(registerData: getIt.get<RegisterData>()),
      child: const Scaffold(
        body: SignUpViewBody(),
      ),
    );
  }
}
