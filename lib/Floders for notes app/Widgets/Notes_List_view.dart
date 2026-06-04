import 'package:flutter/material.dart';

import 'Notes_Item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: NotesItem(),
        );
      },
    );
  }
}
