import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSreachIcon extends StatelessWidget {
  const CustomSreachIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Icon(Icons.search_rounded, size: 23),
    );
  }
}
