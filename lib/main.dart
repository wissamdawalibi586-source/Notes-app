import 'package:aaaa/Floders%20for%20notes%20app/Models/note_model.dart';
import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Constants.dart';
import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Simple_bloc_observer.dart';
import 'package:aaaa/Floders%20for%20notes%20app/cubits_Add_note_cubit/Add_notes_cubit.dart';
import 'package:aaaa/Floders%20for%20notes%20app/views/notes_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  BlocObserver() = SimpleBlocObserver() ;
  await Hive.initFlutter();
  runApp((Notesapp()));
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesbox);

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
