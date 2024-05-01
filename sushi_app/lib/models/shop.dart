import 'package:flutter/material.dart';
import 'package:sushi_app/models/food.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
    Food(
      name: 'Rice Bowl',
      price: '21.00',
      imagePath: 'lib/images/rice.png',
      rating: '4.9',
    ),
    Food(
      name: 'Classic Sushi',
      price: '23.00',
      imagePath: 'lib/images/sushi.png',
      rating: '4.5',
    ),
    Food(
      name: 'Onigiri',
      price: '15.00',
      imagePath: 'lib/images/onigiri.png',
      rating: '4.0',
    ),
  ];

  // shopping cart
  List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food food, int quantity) {
    for (int i = 0; i < quantity; i++) {
      cart.add(food);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    cart.remove(food);
    notifyListeners();
  }
}
