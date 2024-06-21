import 'package:flutter/material.dart';

import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text(
              'Flora`s', 
              style: TextStyle(
            fontSize: 20,
            fontWeight:  FontWeight.normal,


          ),)),
          const SizedBox(width: 16),
          IconBtnWithCounter(
            svgSrc: "assets/icons/bell.svg",
            numOfitem: 3,
            press: () {},
          ),
          const SizedBox(width: 8),
          IconBtnWithCounter(
            svgSrc: "assets/icons/user.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
