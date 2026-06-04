import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Constants.dart';
import 'package:flutter/material.dart';

import 'build_border_text_feild.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labeltext,  required this.maxlines});
final String labeltext;
final int maxlines;

  @override
  Widget build(BuildContext context) {
    return  Padding(

      padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
      child: TextField(maxLines: maxlines,
        cursorColor: kpriamrycolor,
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: TextStyle(color: kpriamrycolor),

          enabledBorder: buildborder(),
          focusedBorder: buildborder(kpriamrycolor),
        ),
      ),
    );
  }}


