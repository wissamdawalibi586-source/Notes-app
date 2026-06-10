import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../Models/note_model.dart';
import '../cubits_Add_note_cubit/Add_notes_cubit.dart';
import '../cubits_Add_note_cubit/Add_notes_state.dart';
import 'Color_List_view.dart';
import 'Constants.dart';
import 'Custom_Text_button.dart';
import 'Custom_text_field.dart';

class Addnoteform extends StatefulWidget {
  const Addnoteform({super.key});

  @override
  State<Addnoteform> createState() => _AddnoteformState();
}

class _AddnoteformState extends State<Addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onsave: (value) {
              title = value;
            },
            labeltext: "Tilte",
            maxlines: 1,
          ),
          CustomTextField(
            onsave: (value) {
              subtitle = value;
            },
            labeltext: "Content",
            maxlines: 4,
          ),
          const SizedBox(height: 60),
          ColorListView(),
          SizedBox(height: 30),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomTextButton(
                isLoading: state is AddnotesLoding ? true : false,
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formateCurrentDate = DateFormat.yMEd().format(
                      currentDate,
                    );

                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subtitle!,
                      date: formateCurrentDate,

                      Color: kpriamrycolor.value,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addnote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
