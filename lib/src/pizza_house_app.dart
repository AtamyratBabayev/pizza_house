import 'package:flutter/material.dart';

import 'shared/shared.dart';

class PizzaHouseApp extends StatelessWidget {
  const PizzaHouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppLightTheme.data,
      home: const Scaffold(
        body: Center(
          child: Text('Pizza House'),
        ),
      ),
    );
  }
}
