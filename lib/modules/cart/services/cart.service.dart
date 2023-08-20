import 'package:flutter/material.dart';

abstract class ICartService {
  void addToCart(int productId);
}

class CartService implements ICartService {
  List<int> productsId = [];

  @override
  void addToCart(int productId) {
    this.productsId.add(productId);
  }
}
