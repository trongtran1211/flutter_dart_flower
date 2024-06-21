import 'package:flutter/material.dart';
import 'cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    // Danh sách các sản phẩm trong giỏ hàng
    final List<CartItem> cartItems = [
      CartItem(name: "Sản phẩm 1", price: 29.99),
      CartItem(name: "Sản phẩm 2", price: 19.99),
      CartItem(name: "Sản phẩm 3", price: 49.99),
    ];
    // Tính tổng giá tiền của các sản phẩm trong giỏ hàng
    double totalPrice = cartItems.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Giỏ Hàng"),
      ),
      body: Column(
        children: [
          // Danh sách các sản phẩm trong giỏ hàng
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemWidget(cartItem: cartItems[index]);
              },
            ),
          ),
          // Hiển thị tổng giá tiền
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tổng cộng:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${totalPrice.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
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
              // Xử lý việc xoá sản phẩm khỏi giỏ hàng
            },
          ),
        ),
      ),
    );
  }
}
