import 'package:aaaa/Floders%20for%20notes%20app/views/notes_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp((Notesapp()));
}

class Notesapp extends StatelessWidget {
  const Notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark ,
      scaffoldBackgroundColor: Color(0xff2D2D2D)),
      home: const NotesView(),
    );

  }
}
