import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:planets_explorer/Core/Enums/themes_enum.dart';
import 'package:planets_explorer/Core/Functions/service_locator.dart';
import 'package:planets_explorer/Core/Themes/themes.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Core/Variables/variables.dart';
import 'package:planets_explorer/Features/Home/Data/ApiService/Model/planets_model.dart';
import 'package:planets_explorer/Features/Register/Data/ApiService/Models/create_user_result_model.dart';
import 'package:planets_explorer/Features/Register/Presentation/Views/greeting_view.dart';
import 'package:planets_explorer/Features/Register/Presentation/ViewsManager/AppThemeCubit/app_theme_cubit.dart';

void main()
async{
  SystemChrome.setSystemUIOverlayStyle(
    //  for bottom navigator in android
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
      )
  );
  setUpGetIt();

  runApp(const MyApp());

  await Hive.initFlutter();
  Hive.registerAdapter(PlanetsModelAdapter());
  await Hive.openBox<PlanetsModel>(ConstantsVariables.planetsBox);
  await Hive.openBox<CreateUserResultModel>(ConstantsVariables.userBox);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppThemeCubit>(
      create: (context) => AppThemeCubit(),
      child: BlocBuilder<AppThemeCubit, AppThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: Themes.light(context),
            darkTheme: Themes.dark(context),
            themeMode: (Variables.currentTheme == ThemesEnum.light) ? ThemeMode
                .light : ThemeMode.dark,
            debugShowCheckedModeBanner: false,
            home: const GreetingView(),
          );
        },
      ),
    );
  }
}
