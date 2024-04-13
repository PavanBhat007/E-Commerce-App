import 'package:e_commerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // PRODUCTS FOR SALE
  final List<Product> _shop = [
    // PRODUCT 1
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item Description",
    ),

    // PRODUCT 2
    Product(
      name: "Product 2",
      price: 99.99,
      description: "Item Description",
    ),

    // PRODUCT 3
    Product(
      name: "Product 3",
      price: 99.99,
      description: "Item Description",
    ),

    // PRODUCT 4
    Product(
      name: "Product 4",
      price: 99.99,
      description: "Item Description",
    ),
  ];

  // CART
  List<Product> _cart = [];

  // PRODUCT LIST
  List<Product> get shop => _shop;

  // GETTER -> USER CART
  List<Product> get cart => _cart;

  // ADD ITEM TO CART
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // REMOVE ITEM FROM CART
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
