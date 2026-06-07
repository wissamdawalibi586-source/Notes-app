import 'package:aaaa/Floders%20for%20notes%20app/Models/note_model.dart';
import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Constants.dart';
import 'package:aaaa/Floders%20for%20notes%20app/views/notes_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  runApp((Notesapp()));
  await Hive.openBox(kNotesbox);
  Hive.registerAdapter(NoteModelAdapter());
}

class Notesapp extends StatelessWidget {
  const Notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Color(0xff2D2D2D),
      ),
      home: const NotesView(),
    );
  }
}
