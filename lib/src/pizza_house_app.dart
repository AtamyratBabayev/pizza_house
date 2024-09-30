import 'package:flutter/material.dart';

class PizzaHouseApp extends StatelessWidget {
  const PizzaHouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Pizza House'),
        ),
      ),
    );
  }
}
