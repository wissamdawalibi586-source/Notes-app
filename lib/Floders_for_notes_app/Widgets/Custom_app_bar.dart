import 'package:flutter/material.dart';
import 'Custom_Search_icon.dart';
class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.text, required this.icon, this.onPressed});
 final String text;
 final IconData icon;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,style: TextStyle(fontSize: 25),),
        Spacer(flex: 10,),
        CustomSreachIcon(onPressed: onPressed,
          icon: icon,)
      ],
    );
  }
}

