import 'package:flutter/material.dart';
import 'package:health_care/components/product_card.dart';
import 'package:health_care/models/Product.dart';
import 'package:health_care/screens/details_screen/details_screen.dart';
import 'package:health_care/screens/search_screen/components/search_provider.dart';
import 'package:provider/provider.dart';


import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  

  @override
  Widget build(BuildContext context) {
    //lấy searchquery từ search field 
    final searchQuery = Provider.of<SearchProvider>(context).searchQuery;
    final searchResults = demoProducts.where((product) {
      final titleLower = product.title.toLowerCase();
      final searchLower = searchQuery.toLowerCase();
      return titleLower.contains(searchLower);
    }).toList();


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
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
                          arguments: ProductDetailsArguments(
                              product: searchResults[index]),
                        ),
                      ),
                    );
                  }

                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
