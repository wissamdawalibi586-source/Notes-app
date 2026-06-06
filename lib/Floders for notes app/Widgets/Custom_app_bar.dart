import 'package:flutter/material.dart';
import 'Custom_Search_icon.dart';
class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.text, required this.icon});
 final String text;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,style: TextStyle(fontSize: 25),),
        Spacer(flex: 10,),
        CustomSreachIcon(icon: icon,)
      ],
    );
  }
}

