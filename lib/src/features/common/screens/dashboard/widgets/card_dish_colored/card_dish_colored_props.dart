import 'package:flutter/material.dart';

class CardDishColoredProps {
  const CardDishColoredProps(
      {required this.dishId,
      required this.image,
      required this.name,
      required this.price,
      required this.backgroundColor});

  final int dishId;
  final String image;
  final String name;
  final double price;
  final Color backgroundColor;
}
