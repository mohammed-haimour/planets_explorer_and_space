import 'package:flutter/material.dart';
import 'package:planets_explorer/Core/Widgets/stars_background.dart';
import 'package:planets_explorer/Features/Register/Presentation/Views/Widgets/greeting_view_body.dart';

class GreetingView extends StatelessWidget {
  const GreetingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StarsBackground(
        body: GreetingViewBody(),
      ),
    );
  }
}
