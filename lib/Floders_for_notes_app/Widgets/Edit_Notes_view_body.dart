import 'package:flutter/material.dart';

import 'Custom_app_bar.dart';
import 'Custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        children: [
          Customappbar(text: "Edit Note", icon: Icons.check),
          SizedBox(height: 20),
          CustomTextField(labeltext: "Title", maxlines: 1),
          CustomTextField(labeltext: "Content", maxlines: 4),
        ],
      ),
    );
    ;
  }
}
