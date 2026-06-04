import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Constants.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,

      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: kpriamrycolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          minimumSize: Size(200, 50),
        ),
        child: Text("Add", style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
