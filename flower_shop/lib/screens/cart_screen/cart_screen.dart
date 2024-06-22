import 'package:flutter/material.dart';
import 'package:health_care/mainpage.dart';
import 'package:health_care/screens/home_screen/home_screen.dart';
import 'cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  static String routeName = "/cart";

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<CartItem> cartItems = [
    CartItem(
        name: "Item 1",
        price: 50.00,
        img: 'assets/images/hoahong.png',
        quantity: 1),
    CartItem(
        name: "Item 2",
        price: 50.00,
        img: 'assets/images/hoahong.png',
        quantity: 1),
    CartItem(
        name: "Item 3",
        price: 50.00,
        img: 'assets/images/hoahong.png',
        quantity: 1),
  ];

  void _updateQuantity(CartItem item) {
    setState(() {
      // Simply trigger a rebuild with the updated item quantity
    });
  }

  double get _totalPrice {
    return cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
        // Thêm nút back trên AppBar và điều hướng về trang home
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushNamed(Mainpage.routeName);
          },
        ),
      ),
      body: Column(
        children: [
          // Danh sách các sản phẩm trong giỏ hàng
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemWidget(
                  cartItem: cartItems[index],
                  onQuantityChanged: _updateQuantity,
                );
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
                  'Total:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${_totalPrice.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Nút Check Out
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Xử lý khi nhấn nút Check Out
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size.fromHeight(50), // Đặt chiều cao của nút
              ),
              child: const Text('Check Out',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
