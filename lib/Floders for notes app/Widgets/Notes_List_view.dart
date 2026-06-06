import 'package:aaaa/Floders%20for%20notes%20app/views/Edit_Note_view.dart';
import 'package:flutter/material.dart';

import 'Notes_Item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: ListView.builder(
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
              child: NotesItem(),
            ),
          );
        },
      ),
    );
  }
}
