import 'package:aaaa/Floders_for_notes_app/Widgets/Notes_Item.dart';
import 'package:aaaa/Floders_for_notes_app/cubits_notes_cubit/notes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Custom_app_bar.dart';
import 'Notes_List_view.dart';

class NotesviewBody extends StatefulWidget {
  const NotesviewBody({super.key});

  @override
  State<NotesviewBody> createState() => _NotesviewBodyState();
}

class _NotesviewBodyState extends State<NotesviewBody> {
  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        children: [
          Customappbar(text: "Notes", icon: Icons.search),
          Expanded(flex: 1, child: NotesListview()),
        ],
      ),
    );
  }
}
