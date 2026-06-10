import 'package:flutter/material.dart';

import 'Color_Item.dart';

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 25*2,
      child: ListView.builder
        (itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ColorItem(),
          );

        },),
    );

  }
}
