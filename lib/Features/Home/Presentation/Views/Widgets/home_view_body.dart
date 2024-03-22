import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planets_explorer/Core/Functions/service_locator.dart';
import 'package:planets_explorer/Core/Widgets/custom_error.dart';
import 'package:planets_explorer/Core/Widgets/custom_loading.dart';
import 'package:planets_explorer/Core/Widgets/custome_screen_bar.dart';
import 'package:planets_explorer/Features/Home/Data/home_data.dart';
import 'package:planets_explorer/Features/Home/Presentation/Views/Widgets/home_view_grid.dart';
import 'package:planets_explorer/Features/Home/Presentation/Views/Widgets/home_view_list.dart';
import 'package:planets_explorer/Features/Home/Presentation/ViewsManager/PlanetsCubit/planets_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlanetsCubit , PlanetsState>(
        builder: (context, state) {
          if(state is PlanetsSuccess) {
            return CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: CustomScreenBar(text: "Home Page ")),
                const SliverToBoxAdapter(
                  child: HomeViewGrid(),
                ),
                const SliverToBoxAdapter(child: CustomScreenBar(text: "Planets")),
                HomeViewList(planets: state.planets)
              ],
            );
          }else if(state is PlanetsLoading){
            return const CustomLoading();
          }else if(state is PlanetsFailure){
            return CustomError(msg: state.msg);
          }else{
            return const SizedBox();
          }
        }
    );
  }
}