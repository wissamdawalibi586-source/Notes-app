import 'package:flutter/material.dart';

import '../Widgets/Add_note_buttom_sheet.dart';
import '../Widgets/Notes_view_Body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesviewBody(),
      floatingActionButton: FloatingActionButton( shape: CircleBorder(),
        backgroundColor: Colors.cyanAccent,
        child: Icon(Icons.add,color: Colors.black,),
        onPressed: () {
        showModalBottomSheet(
            context: context, builder:(context) {
          return AddNotesbuttonsheet();
        });
        },
      ),
    );
  }
}

