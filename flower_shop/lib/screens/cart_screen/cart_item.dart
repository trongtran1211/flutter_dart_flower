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
        
        child: Container(
          color: Colors.white, // Màu nền của Container là trắng
          child: Row(
            children: [
              // Hình ảnh sản phẩm
              Container(
                decoration: BoxDecoration(
                  color: kcolorminor.withOpacity(0.1), // Màu nền, có thể điều chỉnh theo ý của bạn
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10), // Bo tròn góc bên trái trên
                    bottomLeft: Radius.circular(10), // Bo tròn góc bên trái dưới
                  ),
                ),
                width: 140,
                height: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10), // Để bo tròn góc bên trái trên
                    bottomLeft: Radius.circular(10), // Để bo tròn góc bên trái dưới
                  ),
                  child: Image.asset(
                    widget.cartItem.img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(width: 16),
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20), // Bo tròn góc bên phải trên
                    bottomRight: Radius.circular(20), // Bo tròn góc bên phải dưới
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.cartItem.name, style: const TextStyle(fontSize: 18)),
                        const SizedBox(height: 5),
                        Text(
                          "\$${(widget.cartItem.price * widget.cartItem.quantity).toStringAsFixed(2)}",
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 1,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: SizedBox(
                                width: 35,
                                child: IconButton(
                                  iconSize: 20,
                                  icon: const Icon(Icons.remove_circle_outline),
                                  onPressed: _decreaseQuantity,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(widget.cartItem.quantity.toString(), style: const TextStyle(fontSize: 18)),
                            const SizedBox(width: 10),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 1,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: SizedBox(
                                width: 35,
                                child: IconButton(
                                  iconSize: 20,
                                  icon: const Icon(Icons.add_circle_outline),
                                  onPressed: _increaseQuantity,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
