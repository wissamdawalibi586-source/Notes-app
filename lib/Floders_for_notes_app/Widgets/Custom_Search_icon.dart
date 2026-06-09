import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSreachIcon extends StatelessWidget {
  const CustomSreachIcon({super.key,  required this.icon, this.onPressed});
final IconData icon;
final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(15),
      ),

      child: IconButton(onPressed: onPressed, icon: Icon(icon,size: 27,))
    );
  }
}
