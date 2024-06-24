import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  // final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;
  final String category;

  Product({
    required this.id,
    required this.images,
    // required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
    required this.category
  });
}

// Our demo dữ liệu của product

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/flower_white_1.png",
      "assets/images/flower_white_1.png",
      "assets/images/flower_white_1.png",
      "assets/images/flower_white_1.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Hoa Trắng ",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    category: "Flower"
  ),
  Product(
    id: 2,
    images: [
      "assets/images/hoahong.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Hoa hồng",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
    category: "Flower"
  ),
  Product(
    id: 3,
    images: [
      "assets/images/hoahong.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Hoa Cẩm tú cầu",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    category: "Gift"
  ),
  Product(
    id: 4,
    images: [
      "assets/images/flower_white_1.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Hoa Lan",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
    category: "Special"
  ),
  Product(
    id: 1,
    images: [
      "assets/images/flower_white_1.png",
      "assets/images/flower_white_2.png",
      "assets/images/flower_white_3.png",
      "assets/images/flower_white_4.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Hoa Trắng ",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    category: "Daily Gift"
  ),
  Product(
    id: 2,
    images: [
      "assets/images/hoahong.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Hoa hồng",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
    category: "Flower"
  ),
  Product(
    id: 3,
    images: [
      "assets/images/hoahong.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Hoa Cẩm tú cầu",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    category: "Classify"
  ),
  Product(
    id: 4,
    images: [
      "assets/images/hoahong.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Hoa hồng",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
    category: "Flower"
  ),
];

const String description =
    "Hoa hồng là một loài hoa nổi tiếng và được ưa chuộng trên toàn thế giới vì vẻ đẹp và hương thơm của nó. Dưới đây là một số thông tin cơ bản về hoa hồng: Hoa hồng thường có cánh hoa mỏng, mềm mại, xếp chồng lên nhau thành từng lớp tạo thành bông hoa đẹp mắt. Hoa có nhiều loại màu sắc khác nhau như đỏ, hồng, trắng, vàng, cam, và xanh.";
