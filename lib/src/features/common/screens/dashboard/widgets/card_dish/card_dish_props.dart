class CardDishProps {
  const CardDishProps(
      {required this.dishId,
      required this.image,
      required this.name,
      required this.price});

  final int dishId;
  final String image;
  final String name;
  final double price;
}
