import 'package:flutter/material.dart';
import 'package:planets_explorer/Features/News/Presnetation/Views/Widgets/new_view_body.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(alignment: Alignment.centerLeft, child: Text("News"),),
      ),
      body: const NewsViewBody(),
    );
  }
}
