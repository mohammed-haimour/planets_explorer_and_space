import 'package:flutter/material.dart';
import 'package:planets_explorer/Features/Astronauts/Presentation/Views/Widgets/astronauts_view_body.dart';

class AstronautsView extends StatelessWidget {
  const AstronautsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(alignment: Alignment.centerLeft, child: Text("Astronauts In The Space"),),
      ),
      body: const AstronautsViewBody(),
    );
  }
}
