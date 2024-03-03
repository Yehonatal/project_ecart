import 'package:flutter/material.dart';
import 'package:project_ecart/models/shoe.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(
          widget.shoe.price,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red.shade200,
          ),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
