import "package:flutter/material.dart";
import "package:project_ecart/models/shoe.dart";
import "package:provider/provider.dart";

import "../components/shoe_tile.dart";
import "../models/cart.dart";

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // Add shoe to cart method
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // Alert
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text("Successfully added!"),
              content: Text("Check your cart."),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // search bar
                Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        )
                      ],
                    )),

                // message
                const Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "my back be hurting, cause I be coding like am wearing air. just do it, its in the game 🤌🏾",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),

                // list of shoes
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "SHOES 🔥",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Text(
                        "see all",
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Expanded(
                    child: ListView.builder(
                        itemCount: value.getShoeStoreSize(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          // create a shoe
                          Shoe shoe = value.getShoeList()[index];
                          return ShoeTile(
                            onTap: () => addShoeToCart(shoe),
                            shoe: shoe,
                          );
                        })),
                const SizedBox(
                  height: 20,
                ),
              ],
            ));
  }
}
