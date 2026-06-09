import 'package:aaaa/Floders_for_notes_app/Models/note_model.dart';
import 'package:flutter/material.dart';

import '../Widgets/Edit_Notes_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(note: note,),
    );
  }
}
