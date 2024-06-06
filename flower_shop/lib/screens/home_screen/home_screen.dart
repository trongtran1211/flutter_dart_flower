import 'package:flutter/material.dart';
import 'package:health_care/constants.dart';

// import 'components/categories.dart';
// import 'components/discount_banner.dart';
import 'components/home_header.dart';
// import 'components/popular_product.dart';
// import 'components/special_offers.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     "TRANG CHỦ",
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       color: kPrimaryColor
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
        
      // ),

      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              HomeHeader(),
              // DiscountBanner(),
              // Categories(),
              // SpecialOffers(),
              SizedBox(height: 20),
              // PopularProducts(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
