import 'package:flutter/material.dart';

import '../../../../../generated/assets.gen.dart';
import '../../../../shared/shared.dart';
import '../../../dishes/dishes.dart';
import 'widgets/widgets.dart';

const _paddigVertical = 20.0;
const _paddingBetweenElements = 40.0;

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  void _navigateToFilters() {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  void _onSearchChange(String searchKey) {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = context.loc;
    // TODO: Update with real data
    final recommendedDishes = [
      Dish(
          id: 1,
          name: 'Honey lime combo',
          image: Assets.images.demoDish1.path,
          price: 2000),
      Dish(
          id: 2,
          name: 'Berry mango combo',
          image: Assets.images.demoDish1.path,
          price: 8000),
    ];

    return Scaffold(
      appBar: TopBar(
        props: TopBarProps(actions: [
          TopBarActionProps(
              icon: Assets.icons.basket,
              iconColor: theme.colorScheme.primary,
              title: loc.dashboardCart),
        ]),
      ),
      drawer: Drawer(
        backgroundColor: theme.colorScheme.surface,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: _paddigVertical),
        children: [
          const DashboardScreenTitle(),
          const HeightSpacer(_paddingBetweenElements),
          DashboardSearchFiltersBar(
            props: DashboardSearchFiltersBarProps(
                onFiltersPressed: _navigateToFilters,
                onSearchChanged: _onSearchChange),
          ),
          const HeightSpacer(_paddingBetweenElements),
          RecommendedDishesList(
              props: RecommendedDishesListProps(dishes: recommendedDishes)),
          const HeightSpacer(_paddingBetweenElements),
          const CategorizedDishesListView()
        ],
      ),
    );
  }
}
