import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Variables/Constatns/constants_variables.dart';
import 'package:planets_explorer/Core/Widgets/stars_background.dart';

class HomeViewGridElement extends StatelessWidget {
  const HomeViewGridElement({super.key , this.colors = const[ConstantsVariables.colorBlack, ConstantsVariables.colorBlack], required this.text, this.shadowColor = ConstantsVariables.colorBlack, required this.onPress});

  final List<Color> colors;
  final String text;
  final Color shadowColor;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1/1,
        child: InkWell(
          onTap: onPress,
          child: Container(
            decoration: BoxDecoration(
              boxShadow:[ BoxShadow(color: shadowColor , blurRadius: 40 ,spreadRadius: 10)]
            ),
            child: ClipRRect(
                borderRadius: ConstantsVariables.radiusMedium,
                child: StarsBackground(
                    colors: colors,
                    body: Padding(
                      padding: ConstantsVariables.paddingNormal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          const Icon(Icons.arrow_circle_right , color: ConstantsVariables.colorWhiteSmoke , size: 40),
                          FittedBox(child: Text(text ,style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: ConstantsVariables.colorWhiteSmoke)))
                        ],
                      ),
                    )
                )
            ),
          ),
        ),
    );
  }
}
