import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Functions/functions.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Features/Astronauts/Presentation/Views/astronauts_view.dart';
import 'package:planets_explorer/Features/Home/Presentation/Views/Widgets/home_view_grid_element.dart';
import 'package:planets_explorer/Features/IIS/Presentation/Views/iis_view.dart';
import 'package:planets_explorer/Features/News/Presnetation/Views/news_view.dart';
import 'package:planets_explorer/Features/SpaceShips/Presentation/Views/space_ships_view.dart';

class HomeViewGrid extends StatelessWidget {
  const HomeViewGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: ConstantsVariables.paddingSmall,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          HomeViewGridElement(
            onPress: (){
              Functions.goTo(context, widget: const AstronautsView());
            },
            text: "Astronauts\nIn The Space",
            colors: const [
              ConstantsVariables.colorBlack,
              ConstantsVariables.colorTransparentBlue,
            ],
            shadowColor: ConstantsVariables.colorTransparentBlue,
          ),
          HomeViewGridElement(
            onPress: (){
              Functions.goTo(context, widget: const NewsView());
            },
            text: "Latest\nNews",
            colors: const [
              ConstantsVariables.colorBlack,
              ConstantsVariables.colorTransparentGreen,
            ],
            shadowColor: ConstantsVariables.colorTransparentGreen,
          ),
          HomeViewGridElement(
            onPress: (){
              Functions.goTo(context, widget: const SpaceShipsView());
            },
            text: "Space\nShips",
            colors: const [
              ConstantsVariables.colorBlack,
              ConstantsVariables.colorTransparentRed,
            ],
            shadowColor: ConstantsVariables.colorTransparentRed,

          ),
          HomeViewGridElement(
            onPress: (){
              Functions.goTo(context, widget: const IisView());
            },
            text: "About IIS",
            colors: const [
              ConstantsVariables.colorBlack,
              ConstantsVariables.colorTransparentPurple,
            ],
            shadowColor: ConstantsVariables.colorTransparentPurple,
          ),
        ],
    );
  }
}
