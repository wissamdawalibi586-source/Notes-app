import 'package:flutter/material.dart';

import 'Notes_Item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,bottom: 8),
      child: ListView.builder(padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: NotesItem(),
          );
        },
      ),
    );
  }
}
