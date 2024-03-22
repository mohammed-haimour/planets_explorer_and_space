import 'package:flutter/material.dart';
import 'package:planets_explorer/Features/SpaceShips/Presentation/Views/Widgets/space_ships_view_body.dart';

class SpaceShipsView extends StatelessWidget {
  const SpaceShipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(alignment: Alignment.centerLeft, child: Text("Space Ships"),),
      ),
      body: const SpaceShipsViewBody(),
    );
  }
}
