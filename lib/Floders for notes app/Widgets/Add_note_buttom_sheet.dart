import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Constants.dart';
import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Custom_text_field.dart';
import 'package:flutter/material.dart';

class AddNotesbuttonsheet extends StatelessWidget {
  const AddNotesbuttonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
         CustomTextField(labeltext: "Tilte",maxlines: 1,),
         CustomTextField(labeltext: "Content",maxlines: 4,),

        ],
      ),
    );
  }
}
