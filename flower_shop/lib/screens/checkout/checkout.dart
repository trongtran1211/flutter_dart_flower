import 'package:flutter/material.dart';
import 'package:health_care/constants.dart';
import 'package:health_care/models/CartItem.dart';

class Checkout extends StatelessWidget {
  static String screenroute = '/checkout';
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    List<CartItem> _cartItems = [];
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.pop(context)),
          title: const Text(
            'Checkout',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: black),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: white,
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 8),
                  Icon(Icons.play_arrow, color: Colors.pink),
                  Text('Delivery', style: TextStyle(fontSize: 18,color: Colors.pink)),
                  SizedBox(width: 16),
                  Icon(Icons.play_arrow, color: Colors.grey),
                  Text('Payment', style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Delivery address'),
                  TextButton(
                      onPressed: () {
                        //de coi neu muon sua dia chi xuong 3 dong thi lam sao tam thoi chua lam dc
                      },
                      child: const Text('Edit')),
                ],
              ),
              // form mong muon la dia chi line 1 phuong quan line 2 tp quoc gia line 3
              const Text('address 1'),
              const Text('address 2'),
              const Text('address 3'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('date'),
                  TextButton(
                      onPressed: () {
                        //xu ly sau
                      },
                      //form mong muon la dd/mm/yy
                      child: const Text('')),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Time'),
                  TextButton(
                    onPressed: () {
                      // Xu ly sau
                    },
                    child: const Text('time example'),
                  ),
                ],
              ),
              Container(
                //đoạn này để dùng sau khi chạy dc cái giỏ hàng qua trang thanh toán
                /* color: Colors.purple[50],
              padding: EdgeInsets.all(8),
              height: 150, // Adjust height as needed
              child: ListView.builder(
                itemCount: _cartItems.length,
                itemBuilder: (context, index) {
                  final item = _cartItems[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item.name),
                      Text('\$${item.price}'),
                    ],
                  );
                },
              ),*/
                //nếu chạy dc giỏ hàng qua thanh toán thì xóa đoạn này đi chống tạm thời thôi
                color: Colors.purple[50],
                padding: EdgeInsets.all(8),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Item1'),
                        Text('\$100'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Item 2'),
                        Text('\$100'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Item 3'),
                        Text('\$100'),
                      ],
                    ),
                  ],
                ),
              ),
              //tính tổng phí vận chuyển v.v sau khi chạy dc backend
              /*SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal'),
                Text('\$${_cartItems.fold(0, (sum, item) => sum + item.price)}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery'),
                Text('\$3'),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  '\$${_cartItems.fold(0, (sum, item) => sum + item.price) + 3}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),*/
              //xai tạm thời
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subtotal'),
                  Text('\$300'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery'),
                  Text('\$3'),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('\$303', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle confirm button press
                  },
                  child: const Text('Confirm'),
                ),
              ),
            ],
          ),
        ));
  }
}
