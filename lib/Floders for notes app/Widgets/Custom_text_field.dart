import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Constants.dart';
import 'package:flutter/material.dart';

import 'build_border_text_feild.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labeltext,
    required this.maxlines,
    this.onsave,
  });

  final String labeltext;
  final int maxlines;
  final void Function(String?)? onsave;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
      child: TextFormField(
        onSaved: onsave,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "field is required bro !";
          } return null;

        },

        maxLines: maxlines,

        cursorColor: kpriamrycolor,

        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: TextStyle(color: kpriamrycolor),

          enabledBorder: buildborder(),
          focusedBorder: buildborder(kpriamrycolor),
          errorBorder: buildborder(Colors.red),
          focusedErrorBorder: buildborder(Colors.red),
        ),
      ),
    );
  }
}
