import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Widgets/custom_list_element.dart';
import 'package:planets_explorer/Features/Home/Data/ApiService/Model/planets_model.dart';

class HomeViewList extends StatelessWidget {
  const HomeViewList({super.key, required this.planets});

  final List<PlanetsModel> planets;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: planets.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomListElement(imageUrl: planets[index].imgSrc!, title: planets[index].name! , subTitle: planets[index].description! ,url: planets[index].wikiLink!);
      },
    );
  }
}
