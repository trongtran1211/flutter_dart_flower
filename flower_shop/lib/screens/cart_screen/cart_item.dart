import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final double price;

  CartItem({required this.name, required this.price});
}

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;

  const CartItemWidget({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(cartItem.name, style: const TextStyle(fontSize: 18)),
          subtitle: Text("\$${cartItem.price.toStringAsFixed(2)}"),
          trailing: IconButton(
            icon: const Icon(Icons.remove_circle_outline),
            onPressed: () {
              // Handle remove item from cart
            },
          ),
        ),
      ),
    );
  }
}
