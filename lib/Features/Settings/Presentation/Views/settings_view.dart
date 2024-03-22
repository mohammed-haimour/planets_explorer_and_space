import 'package:flutter/material.dart';
import 'package:planets_explorer/Features/Settings/Presentation/Views/Widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(alignment: Alignment.centerLeft, child: Text("Settings"),),
      ),
      body: const SettingsViewBody(),
    );
  }
}
