import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        // margin: const EdgeInsets.all(20), // Chỉnh sửa giá trị margin tại đây
        child: TextFormField(
          onChanged: (value) {},
          decoration: InputDecoration(
            filled: true,
            fillColor: kSecondaryColor.withOpacity(0.1),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            border: searchOutlineInputBorder,
            focusedBorder: searchOutlineInputBorder,
            enabledBorder: searchOutlineInputBorder,
            hintText: "Search",
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}

const searchOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide( color: kSecondaryColor, width: 1),
);
