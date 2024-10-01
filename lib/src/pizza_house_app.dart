import 'package:flutter/material.dart';

import 'shared/shared.dart';

class PizzaHouseApp extends StatelessWidget {
  const PizzaHouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppLightTheme.data,
      routerConfig: AppRouter.router,
    );
  }
}
