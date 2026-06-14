import 'package:flutter/material.dart';

import 'Color_Item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int cuurentindex =0;
  List<Color> colors = [

    Colors.red,
    Colors.blueAccent,
    Colors.yellow,
    Colors.green,
    Colors.orangeAccent,
    Colors.white38,

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                cuurentindex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: cuurentindex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
