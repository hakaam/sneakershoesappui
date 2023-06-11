import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:sneakershopui/models/shoe.dart';

class Cart  extends ChangeNotifier{
  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '223',
      imagePath: 'images/zoom.PNG',
      description: 'The forward-thinking design of his latest signature shoe',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '456',
      imagePath: 'images/airjordan.PNG',
      description: 'You have got the hops and the speed-lac up in shoes that enhance',
    ),
    Shoe(
      name: 'KD Treys 6',
      price: '456',
      imagePath: 'images/kdtrey.PNG',
      description: 'You have got the hops and the speed-lac up in shoes that enhance',
    ),
  ];

  // List of items in user's cart
  List<Shoe> userCart = [];

  // Get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // Get user's cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // Add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
