import 'package:flutter/material.dart';

class PaymentCheckout extends StatelessWidget {
  static String routeName = "/payment_checkout";

  const PaymentCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Delivery',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 10),
                Icon(Icons.circle, color: Colors.grey, size: 10),
                SizedBox(width: 10),
                Text(
                  'Payment',
                  style: TextStyle(color: Colors.pink),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Payment method title
            const Text(
              'Payment Method',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),

            // Credit Card 1
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.pink[100],
              child: ListTile(
                leading: Image.asset('assets/images/visa.png', width: 40),
                title: const Text(
                  '**** **** **** 1234',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                trailing: TextButton(
                  onPressed: () {
                    // Edit action
                  },
                  child: const Text(
                    'Edit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Credit Card 2
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.purple[100],
              child: ListTile(
                leading: Image.asset('assets/images/mastercard.png', width: 40),
                title: const Text(
                  '**** **** **** 1234',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                trailing: TextButton(
                  onPressed: () {
                    // Edit action
                  },
                  child: const Text(
                    'Edit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Make A Payment Button
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Make a payment action
                },
                child: const Text(
                  'Make A Payment',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
