import 'package:aaaa/Floders%20for%20notes%20app/Models/note_model.dart';
import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Constants.dart';
import 'package:aaaa/Floders%20for%20notes%20app/cubits_Add_note_cubit/Add_notes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                var noteModel = NoteModel(title: title!,
                    subTitle: subtitle!,
                    date: DateTime.now().toString(),
                    Color: kpriamrycolor.value);
                BlocProvider.of<AddNotesCubit>(context).addnote(noteModel);
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
