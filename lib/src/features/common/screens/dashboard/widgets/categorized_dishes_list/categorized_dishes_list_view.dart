import 'package:flutter/material.dart';

import '../../../../../../../generated/assets.gen.dart';
import '../../../../../../shared/shared.dart';
import '../card_dish_colored/card_dish_colored.dart';

const _heightList = 152.0;
const _paddingBetweenElements = 16.0;
const _paddingHorizontal = 24.0;
const _paddingBottomTabBar = 24.0;

class CategorizedDishesListView extends StatelessWidget {
  const CategorizedDishesListView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Update with real data
    final cardsProps = [
      CardDishColoredProps(
        dishId: 1,
        image: Assets.images.demoDish2.path,
        name: 'Quinoa fruit salad',
        price: 10000,
        backgroundColor: const Color(0xFFFFFAEB),
      ),
      CardDishColoredProps(
        dishId: 1,
        image: Assets.images.demoDish3.path,
        name: 'Tropical fruit salad',
        price: 10000,
        backgroundColor: const Color(0xFFFEF0F0),
      ),
      CardDishColoredProps(
        dishId: 1,
        image: Assets.images.demoDish4.path,
        name: 'melon fruit salad',
        price: 10000,
        backgroundColor: const Color(0xFFF1EFF6),
      ),
    ];

    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          const AppTabBar(
            props: AppTabBarProps(tabs: [
              TabBarItem(title: 'Hottest'),
              TabBarItem(title: 'Popular'),
              TabBarItem(title: 'New Combo'),
              TabBarItem(title: 'Top'),
              TabBarItem(title: 'Incredible'),
            ]),
          ),
          const HeightSpacer(_paddingBottomTabBar),
          SizedBox(
            height: _heightList,
            child: ListView.separated(
              padding:
                  const EdgeInsets.symmetric(horizontal: _paddingHorizontal),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, __) =>
                  const WidthSpacer(_paddingBetweenElements),
              itemBuilder: (_, pos) => CardDishColored(props: cardsProps[pos]),
              itemCount: cardsProps.length,
            ),
          )
        ],
      ),
    );
  }
}
