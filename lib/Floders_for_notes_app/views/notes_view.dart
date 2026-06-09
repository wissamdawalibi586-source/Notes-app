import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Widgets/Add_note_buttom_sheet.dart';
import '../Widgets/Notes_view_Body.dart';
import '../cubits_notes_cubit/notes_cubit.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=> NotesCubit(),
      child: Scaffold(
        body: NotesviewBody(),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Colors.cyanAccent,
          child: Icon(Icons.add, color: Colors.black),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return AddNotesbuttonsheet();
              },
            );
          },
        ),
      ),
    );
  }
}
