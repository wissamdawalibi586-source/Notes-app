import 'package:aaaa/Floders%20for%20notes%20app/cubits_Add_note_cubit/Add_notes_cubit.dart';
import 'package:aaaa/Floders%20for%20notes%20app/cubits_Add_note_cubit/Add_notes_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Add_note_form.dart';

class AddNotesbuttonsheet extends StatefulWidget {
  const AddNotesbuttonsheet({super.key});

  @override
  State<AddNotesbuttonsheet> createState() => _AddNotesbuttonsheetState();
}

class _AddNotesbuttonsheetState extends State<AddNotesbuttonsheet> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNotesCubit())],
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddnotesLoding ? true : false,

            child: Padding(
              padding:  EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: Addnoteform()),
            ),
          );
        },
        listener: (context, state) {
          if (state is AddnotesSuccess) {
            Navigator.pop(context);
          }
          if (state is AddnotesFailure) {
            print('failed ${state.errMessage}');
          }
        },
      ),
    );
  }
}
