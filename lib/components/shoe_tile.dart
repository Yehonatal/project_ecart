import 'package:flutter/material.dart';
import 'package:project_ecart/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // shoe image
          Padding(
            padding: const EdgeInsets.all(14),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(shoe.imagePath),
            ),
          ),

          // button to add to cart
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      shoe.price,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )
                  ],
                ),
                Container(
                  child: Icon(Icons.add),
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(14),
                          bottomEnd: Radius.circular(14))),
                )
              ],
            ),
          ),

          // price and other details
          Padding(
            padding: const EdgeInsets.all(14),
            child: Text(
              shoe.description,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
