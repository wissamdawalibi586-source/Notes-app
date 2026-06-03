import 'package:aaaa/Floders%20for%20notes%20app/Widgets/Custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotesviewBody extends StatelessWidget {
  const NotesviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,left: 29),
      child: Column(
        children: [
          Customappbar()
        ],
      ),
    );
  }
}