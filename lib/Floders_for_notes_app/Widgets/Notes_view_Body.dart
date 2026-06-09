import 'package:flutter/material.dart';

import 'Custom_app_bar.dart';
import 'Notes_List_view.dart';

class NotesviewBody extends StatelessWidget {
  const NotesviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        children: [
          Customappbar(text: "Notes", icon: Icons.search),
          Expanded(flex: 1, child: NotesListview()),
        ],
      ),
    );
  }
}
