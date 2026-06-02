import 'package:flutter/material.dart';
import '../Models/Container_Item.dart';
import '../Models/number_Model.dart' show Number, forAll;
import 'HomePage.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<forAll> numbers = const [
    forAll(
      sound: "sounds/numbers/number_one_sound.mp3",
      image: "assets/images/numbers/number_one.png",
      jpName: "Ichi",
      enName: "one",
    ),
    forAll(
      sound: "sounds/numbers/number_two_sound.mp3",
      image: "assets/images/numbers/number_two.png",
      jpName: "Ni",
      enName: "two",
    ),
    forAll(
      sound: "sounds/numbers/number_three_sound.mp3",
      image: "assets/images/numbers/number_three.png",
      jpName: "San",
      enName: "three",
    ),
    forAll(
      sound: "sounds/numbers/number_four_sound.mp3",
      image: "assets/images/numbers/number_four.png",
      jpName: "Shi",
      enName: "four",
    ),
    forAll(
      sound: "sounds/numbers/number_five_sound.mp3",
      image: "assets/images/numbers/number_five.png",
      jpName: "Go",
      enName: "five",
    ),
    forAll(
      sound: "sounds/numbers/number_six_sound.mp3",
      image: "assets/images/numbers/number_six.png",
      jpName: "Roku",
      enName: "six",
    ),
    forAll(
      sound: "sounds/numbers/number_seven_sound.mp3",
      image: "assets/images/numbers/number_seven.png",
      jpName: "Shichi",
      enName: "seven",
    ),
    forAll(
      sound: "sounds/numbers/number_eight_sound.mp3",
      image: "assets/images/numbers/number_eight.png",
      jpName: "Hachi",
      enName: "eight",
    ),
    forAll(
      sound: "sounds/numbers/number_nine_sound.mp3",
      image: "assets/images/numbers/number_nine.png",
      jpName: "Kyū",
      enName: "nine",
    ),
    forAll(
      sound: "sounds/numbers/number_ten_sound.mp3",
      image: "assets/images/numbers/number_ten.png",
      jpName: "Jū ",
      enName: "ten",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Numbers", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ContainerNumber(
            number: numbers[index],
            color: Color(0xffF99531),
          );
        },
      ),
    );
  }
}

List<Widget> getList(List<forAll> numbers) {
  List<Widget> itemList = [];
  for (int i = 0; i < numbers.length; i++) {
    itemList.add(ContainerNumber(number: numbers[i], color: Color(0xffF99531)));
  }
  return itemList;
}
