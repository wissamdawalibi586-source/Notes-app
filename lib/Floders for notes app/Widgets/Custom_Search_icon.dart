import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSreachIcon extends StatelessWidget {
  const CustomSreachIcon({super.key,  required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Icon(icon, size: 23),
    );
  }
}
