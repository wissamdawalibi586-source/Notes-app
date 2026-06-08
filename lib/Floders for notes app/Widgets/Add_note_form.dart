import 'package:flutter/material.dart';

import 'Custom_Text_button.dart';
import 'Custom_text_field.dart';

class Addnoteform extends StatefulWidget {
  const Addnoteform({super.key});

  @override
  State<Addnoteform> createState() => _AddnoteformState();
}

class _AddnoteformState extends State<Addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onsave: (value) {
              title = value;
            },
            labeltext: "Tilte",
            maxlines: 1,
          ),
          CustomTextField(
            onsave: (value) {
              subtitle = value;
            },
            labeltext: "Content",
            maxlines: 4,
          ),
          const SizedBox(height: 60),
          CustomTextButton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
