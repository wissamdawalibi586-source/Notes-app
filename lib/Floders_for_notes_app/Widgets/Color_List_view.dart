import 'package:aaaa/Floders_for_notes_app/cubits_Add_note_cubit/Add_notes_cubit.dart';
import 'package:aaaa/Floders_for_notes_app/cubits_Add_note_cubit/Add_notes_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Color_Item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int cuurentindex =0;
  List<Color> colors = [

    Colors.red,
    Colors.blueAccent,
    Colors.yellow,
    Colors.green,
    Colors.orangeAccent,
    Colors.white38,

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                cuurentindex = index;
                BlocProvider.of<AddNotesCubit>(context).color =colors[index];
                setState(() {});
              },
              child: ColorItem(
                isActive: cuurentindex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
