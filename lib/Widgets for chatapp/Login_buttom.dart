import 'package:flutter/material.dart';

class LoginButtom extends StatelessWidget {
  const LoginButtom({
      required this.onTap,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;
 final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(text, style: TextStyle(color: textColor)),
      ),
    );
  }
}
