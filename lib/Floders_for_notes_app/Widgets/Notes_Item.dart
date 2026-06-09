import 'package:aaaa/Floders_for_notes_app/Models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 8),
      height: 190,
      decoration: BoxDecoration(
        color: Color(note.Color),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          ListTile(
            title: Text(
              note.title,
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                note.subTitle,
                style: TextStyle(color: Colors.black45, fontSize: 20),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: IconButton(
                onPressed: () {},
                icon: (Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 23,
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              note.date,
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ],
      ),
    );
  }
}
