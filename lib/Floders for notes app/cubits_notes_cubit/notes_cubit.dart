import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';


import '../Widgets/Constants.dart';
import 'notes_state.dart';
import 'package:aaaa/Floders%20for%20notes%20app/Models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes(NoteModel) async {
    try {
      var notesbox = Hive.box<NoteModel>(kNotesbox);

      emit(NotesSuccess(notesbox.values.toList()));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
