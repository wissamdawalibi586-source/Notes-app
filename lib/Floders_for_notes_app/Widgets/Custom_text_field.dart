import 'package:flutter/material.dart';

import 'Constants.dart';
import 'build_border_text_feild.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labeltext,
    required this.maxlines,
    this.onsave,
    this.onchanged
  });

  final String labeltext;
  final int maxlines;
  final void Function(String?)? onsave;
  final void Function(String)? onchanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
      child: TextFormField(
        onChanged: onchanged,
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
