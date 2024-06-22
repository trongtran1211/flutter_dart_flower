import 'package:flutter/material.dart';
import 'package:health_care/constants.dart';

class CartItem {
  final String name;
  final double price;
  final String img;
  int quantity;
  CartItem(
      {required this.name,
      required this.price,
      required this.img,
      required this.quantity});
}

class CartItemWidget extends StatefulWidget {
  final CartItem cartItem;
  final Function(CartItem) onQuantityChanged;

  const CartItemWidget(
      {super.key, required this.cartItem, required this.onQuantityChanged});

  @override
  _CartItemWidgetState createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  void _increaseQuantity() {
    setState(() {
      widget.cartItem.quantity++;
      widget.onQuantityChanged(widget.cartItem);
    });
  }

  void _decreaseQuantity() {
    if (widget.cartItem.quantity > 1) {
      setState(() {
        widget.cartItem.quantity--;
        widget.onQuantityChanged(widget.cartItem);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: kcolorminor.withOpacity(
                    0.1), // Màu nền tím, có thể điều chỉnh theo ý của bạn
                // Để bo tròn viền
              ),
              width: 100,
              height: 100,
              child: Image.asset(
                widget.cartItem.img,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.cartItem.name,
                      style: const TextStyle(fontSize: 18)),
                  const SizedBox(height: 5),
                  Text(
                      "\$${(widget.cartItem.price * widget.cartItem.quantity).toStringAsFixed(2)}"),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove_circle_outline),
                        onPressed: _decreaseQuantity,
                      ),
                      Text(widget.cartItem.quantity.toString(),
                          style: const TextStyle(fontSize: 18)),
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline),
                        onPressed: _increaseQuantity,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
