import 'package:flutter/material.dart';
import 'package:project_ecart/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes to sale
  List<Shoe> shoeInShop = [
    Shoe(
      name: "URBAN PINK CHIC",
      price: "10,700 \$",
      description:
          "Embrace urban fashion with the Urban Chic shoes, a perfect blend of style and comfort.",
      imagePath: "assets/images/pink.jpg",
      type: "running",
    ),
    Shoe(
      name: "BLUE SKY",
      price: "12,500 \$",
      description:
          "Fly high with the Blue Sky shoes, designed for maximum comfort and style.",
      imagePath: "assets/images/ice.jpg",
      type: "basketball",
    ),
    Shoe(
      name: "SUNSET WALK",
      price: "9,800 \$",
      description:
          "Take a leisurely stroll into the sunset with these comfortable and trendy shoes.",
      imagePath: "assets/images/mellow.jpg",
      type: "casual",
    ),
    Shoe(
      name: "FIRE RUNNER",
      price: "15,200 \$",
      description:
          "Ignite your passion for running with the Fire Runner shoes, engineered for speed and performance.",
      imagePath: "assets/images/dirt.jpg",
      type: "running",
    ),
    Shoe(
      name: "DARK KNIGHT",
      price: "18,000 \$",
      description:
          "Channel your inner superhero with the Dark Knight shoes, crafted for strength and agility.",
      imagePath: "assets/images/harvest.jpg",
      type: "basketball",
    )
  ];

  // list of items in the cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeInShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  // get store size
  int getShoeStoreSize() {
    return shoeInShop.length;
  }
}
