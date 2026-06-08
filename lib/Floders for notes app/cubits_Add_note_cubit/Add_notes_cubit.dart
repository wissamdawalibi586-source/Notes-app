import 'package:aaaa/Floders%20for%20notes%20app/Models/note_model.dart';
import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddnotesInitial());
addnote(NoteModel note) async {
  emit(AddnotesLoding());
 try {
   var notesbox = Hive.box<NoteModel>(kNotesbox);
   emit(AddnotesSuccess());
   await notesbox.add(note);
 }  catch (e) {
   AddnotesFailure(e.toString());
 }

}}



