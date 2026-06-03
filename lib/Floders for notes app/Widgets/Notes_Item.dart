import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.only(top: 15,left: 8),
      height: 180,
      decoration: BoxDecoration(
        color: Color(0xffFFCD7A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(color: Colors.red, fontSize: 26),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                "Build your futur with me ",
                style: TextStyle(color: Colors.black45, fontSize: 20),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: IconButton(
                onPressed: () {},
                icon: (Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 23,
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text("May 20/2/2026", style: TextStyle(color: Colors.black45)),
          ),
        ],
      ),
    );
  }
}


