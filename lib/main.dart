import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Floders_for_notes_app/Models/note_model.dart';
import 'Floders_for_notes_app/Widgets/Constants.dart';
import 'Floders_for_notes_app/Widgets/Simple_bloc_observer.dart';
import 'Floders_for_notes_app/views/notes_view.dart';

void main() async {
  BlocObserver() = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesbox);
  runApp((Notesapp()));
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
