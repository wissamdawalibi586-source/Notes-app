import 'package:flutter/material.dart';

class Catigo extends StatelessWidget {
  Catigo(this.text, this.color, this.ontap, {super.key});

  String? text;
  Color? color;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap!,
      child: Container(
        width: double.infinity,
        height: 65,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(text!, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
