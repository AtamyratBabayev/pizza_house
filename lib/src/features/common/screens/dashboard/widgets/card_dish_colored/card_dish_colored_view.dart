import 'package:flutter/material.dart';

import '../../../../../../shared/shared.dart';
import '../button_cart_add.dart';
import '../button_heart.dart';
import 'card_dish_colored_props.dart';

const _radiusBorder = 16.0;
const _height = 152.0;
const _width = 140.0;
const _sizeImage = 64.0;
const _paddingTop = 18.0;
const _paddingHorizontal = 8.0;
const _paddingCurrency = 3.0;

class CardDishColored extends StatelessWidget {
  const CardDishColored({required this.props, super.key});

  final CardDishColoredProps props;

  void _navigateToDish() {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: _navigateToDish,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: props.backgroundColor,
          borderRadius: BorderRadius.circular(_radiusBorder),
        ),
        child: SizedBox(
          height: _height,
          width: _width,
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: ButtonHeart(),
              ),
              Positioned.fill(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const HeightSpacer(_paddingTop),
                    Center(
                      child: Image.asset(props.image,
                          height: _sizeImage, width: _sizeImage),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: _paddingHorizontal),
                      child: Text(
                        props.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: _paddingHorizontal),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            // TODO: Hardcoded should be updated with real currency
                            text: TextSpan(
                                text: '\$',
                                style: theme.textTheme.titleSmall?.copyWith(
                                    color: theme.colorScheme.primary,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  const WidgetSpan(
                                      child: WidthSpacer(_paddingCurrency)),
                                  TextSpan(
                                    text: PriceFormatter.formatToDecimalPattern(
                                        context: context, price: props.price),
                                    style: theme.textTheme.titleSmall?.copyWith(
                                        color: theme.colorScheme.primary),
                                  ),
                                ]),
                          ),
                          const ButtonCardAdd(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
