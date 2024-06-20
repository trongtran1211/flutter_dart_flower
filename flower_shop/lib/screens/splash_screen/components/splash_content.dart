import 'package:flutter/material.dart';

import '../../../constants.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({
    Key? key,
    this.image,
  }) : super(key: key);
  final String? image;

  @override
  State<SplashContent> createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        // const Text(
        //   "HOA TƯƠI",
        //   style: TextStyle(
        //     fontSize: 32,
        //     color: kPrimaryColor,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // const Spacer(flex: 1),
        Image.asset(
          widget.image!,
          height: 400,
          width: 400,
        ),
      ],
    );
  }
}
