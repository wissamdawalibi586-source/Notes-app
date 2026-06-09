import 'package:flutter/material.dart';

import 'Constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.ontap, this.isLoading = false});

  final void Function()? ontap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: kpriamrycolor,
          borderRadius: BorderRadius.circular(14),
        ),
        width: 335,
        height: 45,
        child: Center(
          child:
              isLoading
                  ? SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(color: Colors.black),
                  )
                  : Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
        ),
      ),
    );
  }
}
