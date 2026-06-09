import 'package:aaaa/Floders_for_notes_app/Models/note_model.dart';
import 'package:aaaa/Floders_for_notes_app/cubits_notes_cubit/notes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Custom_app_bar.dart';
import 'Custom_text_field.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
   String? title,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        children: [
          Customappbar(onPressed: () {
            widget.note.title=title ?? widget.note.title;
            widget.note.subTitle= content ?? widget.note.subTitle ;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);

          },
              text: "Edit Note", icon: Icons.check),
          SizedBox(height: 20),
          CustomTextField(onchanged: (value){
            title = value;
          },

              labeltext:"title", maxlines: 1),
          CustomTextField(onchanged: (value){
            content =value;
          },
              labeltext: "Content", maxlines: 4) ,
        ],
      ),
    );
    ;
  }
}
