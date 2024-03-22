import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.msg});

  final String msg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(msg ,style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w200),textAlign: TextAlign.center,),
      ),
    );
  }
}
