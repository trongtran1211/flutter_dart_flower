import 'package:flutter/material.dart';
import 'package:health_care/components/product_card.dart';
import 'package:health_care/models/Product.dart';
import 'package:health_care/screens/details_screen/details_screen.dart';


import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Your Favourite",
            press: () {
    
            },
          ),
        ),
        const SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SectionTitle(
                  title: "Your Favourite",
                  press: () {},
                ),
              ),
              const SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (searchResults.isEmpty)
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Không tìm thấy sản phẩm nào",
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        ),
                      ),
                    
                    SizedBox(height: 20),
                    ...List.generate(
                      searchResults.length,
                      (index) {
                        if (searchResults[index].isFavourite) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: ProductCard(
                              product: searchResults[index],
                              onPress: () => Navigator.pushNamed(
                                context,
                                DetailsScreen.routeName,
                                arguments: ProductDetailsArguments(product: searchResults[index]),
                              ),
                            ),
                          );
                        }
                        return SizedBox.shrink();
                      },
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
