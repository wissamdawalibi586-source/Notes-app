import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Constants.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.ontap});

  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(color: kpriamrycolor,borderRadius: BorderRadius.circular(14)),
        width: 335,
        height: 45
        ,
        child: Center(
          child: Text("Add", style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
