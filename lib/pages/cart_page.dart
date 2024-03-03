import "package:flutter/material.dart";
import "package:project_ecart/models/cart.dart";
import "package:provider/provider.dart";

import "../components/cart_item.dart";
import "../models/shoe.dart";

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Heading
                const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    "Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                Expanded(
                    child: ListView.builder(
                        itemCount: value.getUserCart().length,
                        itemBuilder: (context, index) {
                          // create a shoe
                          Shoe individualShoe = value.getUserCart()[index];
                          return CartItem(shoe: individualShoe);
                        })),
                const SizedBox(
                  height: 20,
                ),
              ],
            ));
  }
}
