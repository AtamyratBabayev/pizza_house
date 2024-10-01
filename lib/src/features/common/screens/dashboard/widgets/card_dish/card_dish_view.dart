import 'package:flutter/material.dart';

import '../../../../../../shared/shared.dart';
import '../button_cart_add.dart';
import '../button_heart.dart';
import 'card_dish_props.dart';

const _blurShadow = 60.0;
const _offsetBottomShadow = 30.0;
const _opacityShadow = 0.05;
const _radiusBorder = 16.0;
const _height = 183.0;
const _width = 152.0;
const _sizeImage = 80.0;
const _paddingTop = 18.0;
const _paddingBottom = 5.0;
const _paddingHorizontal = 12.0;
const _paddingButtons = 5.0;
const _paddingCurrency = 3.0;

class CardDish extends StatelessWidget {
  const CardDish({required this.props, super.key});

  final CardDishProps props;

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
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(_radiusBorder),
            boxShadow: [
              BoxShadow(
                blurRadius: _blurShadow,
                offset: const Offset(0.0, _offsetBottomShadow),
                color: theme.shadowColor.withOpacity(_opacityShadow),
              )
            ]),
        child: SizedBox(
          height: _height,
          width: _width,
          child: Stack(
            children: [
              const Positioned(
                top: _paddingButtons,
                right: _paddingButtons,
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
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: _paddingHorizontal, right: _paddingButtons),
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
                    const HeightSpacer(_paddingBottom),
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
