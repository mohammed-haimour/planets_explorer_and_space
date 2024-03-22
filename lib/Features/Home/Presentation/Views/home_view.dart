import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:planets_explorer/Core/Functions/functions.dart';
import 'package:planets_explorer/Core/Functions/service_locator.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Features/Home/Data/home_data.dart';
import 'package:planets_explorer/Features/Home/Presentation/Views/Widgets/home_view_bottom_bar.dart';
import 'package:planets_explorer/Features/Home/Presentation/Views/Widgets/home_view_body.dart';
import 'package:planets_explorer/Features/Home/Presentation/ViewsManager/PlanetsCubit/planets_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)
      => PlanetsCubit(getIt.get<HomeData>())..getPlanets(),
      child: Scaffold(
          body: SafeArea(
            child: BottomBar(
              borderRadius: ConstantsVariables.radiusMedium,
              width: Functions.width(context) / 1.5,
              barColor: Colors.transparent,
              child: const HomeViewBottomBar(),
              body: (context, controller) => const HomeViewBody(),
            ),
          )
      ),
    );
  }
}