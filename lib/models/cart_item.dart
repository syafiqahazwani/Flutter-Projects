import 'package:flutter_application_1/models/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quality;

  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quality = 1,
  });

  double get totalPrice {
    double addonsPrice =
      selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quality;
  }
}