import 'package:flutter/material.dart';
import 'package:planets_explorer/Features/IIS/Presentation/Views/Widgets/iis_view_body.dart';

class IisView extends StatelessWidget {
  const IisView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Align(alignment: Alignment.centerLeft, child: Text("IIS"),),
        ),
        body: const IisViewBody()
    );
  }
}
