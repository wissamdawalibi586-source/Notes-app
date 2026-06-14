import 'package:flutter/material.dart';

import '../Models/note_model.dart';
import 'Color_Item.dart';
import 'Constants.dart';

class EditColorListview extends StatefulWidget {
  EditColorListview({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditColorListview> createState() => _EditColorListviewState();
}

class _EditColorListviewState extends State<EditColorListview> {
  late int cuurentindex = 0;

  void init() {
    cuurentindex = kcolors.indexOf(Color(widget.note.Color));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27 * 2,
      child: ListView.builder(
        itemCount: kcolors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                cuurentindex = index;
                widget.note.Color = kcolors[index].value;
                setState(() {});
              },
              child: ColorItem(
                isActive: cuurentindex == index,
                color: kcolors[index],
              ),
            ),
          );
        },
      ),
    );
    ;
  }
}