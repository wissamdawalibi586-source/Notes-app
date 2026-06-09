import 'package:aaaa/Floders_for_notes_app/Models/note_model.dart';
import 'package:aaaa/Floders_for_notes_app/cubits_notes_cubit/notes_cubit.dart';
import 'package:aaaa/Floders_for_notes_app/cubits_notes_cubit/notes_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../views/Edit_Note_view.dart';
import 'Notes_Item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key, });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (BuildContext context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return EditNoteView();
                        },
                      ),
                    );
                  },
                  child: NotesItem(
                    note :notes[index]
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
