import 'package:flutter/material.dart';
import 'package:fyazidrb_coffee_shop/models/coffee.dart';

class Shopcoffee with ChangeNotifier {
  // list of coffee
  final List<Coffee> _coffeeList = [
    Coffee(
      name: "Pack brown",
      price: 5,
      imagePath: "assets/coffee-1.png",
    ),
    Coffee(
      name: "Coffee Cup",
      price: 3,
      imagePath: "assets/coffee-2.png",
    ),
    Coffee(
      name: "Black Coffee ",
      price: 15,
      imagePath: "assets/coffee-3.png",
    ),
    Coffee(
      name: "Love Coffee",
      price: 9,
      imagePath: "assets/coffee-4.png",
    ),
  ];

  // list of user cart empty first
  final List<Coffee> _cartList = [];

  // get list of cofffe
  List<Coffee> get coffeList => _coffeeList;

  // get list user cart
  List<Coffee> get cartList => _cartList;

  // add coffee to the cart
  addCoffeeToCart(Coffee coffee) {
    _cartList.add(coffee);
    notifyListeners();
  }

  // remove coffee from the cart
  removeCoffeeFromCart(int index) {
    _cartList.removeAt(index);
    notifyListeners();
  }
}
