import 'package:aaaa/Models/number_Model.dart';
import 'package:flutter/material.dart';
import '../Models/Container_Item.dart';
import 'HomePage.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<forAll> colors = const [
    forAll(
      sound: "sounds/colors/black.wav",
      image: "assets/images/colors/color_black.png",
      jpName: "Burakku",
      enName: "Black",
    ),
    forAll(
      sound: "sounds/colors/brown.wav",
      image: "assets/images/colors/color_brown.png",
      jpName: "Chairo",
      enName: "Brown",
    ),
    forAll(
      sound: "sounds/colors/dusty yellow.wav",
      image: "assets/images/colors/color_dusty_yellow.png",
      jpName: "Hokori ppoi kiro",
      enName: "Dusty yellow",
    ),
    forAll(
      sound: "sounds/colors/gray.wav",
      image: "assets/images/colors/color_gray.png",
      jpName: "Gure",
      enName: "Gray",
    ),
    forAll(
      sound: "sounds/colors/green.wav",
      image: "assets/images/colors/color_green.png",
      jpName: "Midori",
      enName: "Green",
    ),
    forAll(
      sound: "sounds/colors/red.wav",
      image: "assets/images/colors/color_red.png",
      jpName: "Aka",
      enName: "Red",
    ),
    forAll(
      sound: "sounds/colors/white.wav",
      image: "assets/images/colors/color_white.png",
      jpName: "Shiro",
      enName: "White",
    ),
    forAll(
      sound: "sounds/colors/yellow.wav",
      image: "assets/images/colors/yellow.png",
      jpName: "Kiiro",
      enName: "Yellow",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Colors", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ContainerNumber(
            number: colors[index],
            color: Color(0xff7D40A2),
          );
        },
      ),
    );
  }
}
