import 'package:go_router/go_router.dart';

import '../../features/common/screens/dashboard/dashboard_screen.dart';

class AppRouter {
  const AppRouter._();

  static GoRouter get router => GoRouter(routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const DashboardScreen(),
        ),
      ]);
}
