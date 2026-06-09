import 'package:aaaa/Floders_for_notes_app/Models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../Widgets/Constants.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;

  fetchAllNotes()  {
    var notesbox = Hive.box<NoteModel>(kNotesbox);
    notes = notesbox.values.toList();
    emit(NotesSuccess());
    }

}
