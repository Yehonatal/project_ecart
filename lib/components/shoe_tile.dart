import 'package:flutter/material.dart';
import 'package:project_ecart/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;

  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    List<String> brands = shoeBuildsToBrands[shoe.type] ?? [];

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
              child: Image.asset(
                shoe.imagePath,
              ),
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
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: const BorderRadiusDirectional.only(
                            topEnd: Radius.circular(14),
                            bottomEnd: Radius.circular(14))),
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: brands
                  .map((brand) => Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        brand,
                        style: const TextStyle(color: Colors.blueGrey),
                      )))
                  .toList(),
            ),
          ),
          // Brand details

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
