import 'package:flutter/material.dart';

import '../../../../../../shared/shared.dart';
import '../card_dish/card_dish.dart';
import 'recommended_dishes_list.dart';

const _paddingBottomTitle = 24.0;
const _paddingHorizontal = 24.0;
const _paddingBetweenElements = 23.0;

class RecommendedDishesList extends StatelessWidget {
  const RecommendedDishesList({required this.props, super.key});

  final RecommendedDishesListProps props;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc;
    final theme = Theme.of(context);

    final cardDishProps = props.dishes
        .map((dish) => CardDishProps(
            dishId: dish.id,
            image: dish.image,
            name: dish.name,
            price: dish.price))
        .toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _paddingHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            loc.dashboardRecommended,
            style: theme.textTheme.headlineSmall
                ?.copyWith(color: theme.colorScheme.onSurface),
          ),
          const HeightSpacer(_paddingBottomTitle),
          // TODO: Update with list or grid
          Row(
            children: [
              Expanded(child: CardDish(props: cardDishProps.first)),
              const WidthSpacer(_paddingBetweenElements),
              Expanded(child: CardDish(props: cardDishProps.first)),
            ],
          )
        ],
      ),
    );
  }
}
