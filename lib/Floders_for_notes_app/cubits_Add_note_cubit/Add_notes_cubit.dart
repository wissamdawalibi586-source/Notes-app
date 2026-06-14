import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../Models/note_model.dart';
import '../Widgets/Constants.dart';
import 'Add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {

  AddNotesCubit() : super(AddnotesInitial());
  Color color = Colors.red;
addnote(NoteModel note) async {
  note.Color =color.value;
  emit(AddnotesLoding());
 try {
   var notesbox = Hive.box<NoteModel>(kNotesbox);

   await notesbox.add(note);

   emit(AddnotesSuccess());

 }  catch (e) {
   emit(AddnotesFailure(e.toString()));
 }

}}



