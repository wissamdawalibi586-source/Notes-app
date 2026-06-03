import 'package:flutter/material.dart';

import 'Custom_Search_icon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes",style: TextStyle(fontSize: 25),),
        SizedBox(width: 190,),
        CustomSreachIcon()
      ],
    );
  }
}

