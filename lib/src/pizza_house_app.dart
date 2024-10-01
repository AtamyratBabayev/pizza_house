import 'package:flutter/material.dart';

import 'shared/shared.dart';

class PizzaHouseApp extends StatelessWidget {
  const PizzaHouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      supportedLocales: AppLoc.supportedLocales,
      localizationsDelegates: AppLoc.appDelegates,
      locale: AppLoc.supportedLocales.first,
      theme: AppLightTheme.data,
      routerConfig: AppRouter.router,
    );
  }
}
