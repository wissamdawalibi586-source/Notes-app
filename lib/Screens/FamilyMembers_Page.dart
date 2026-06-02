import 'package:aaaa/Models/number_Model.dart';
import 'package:flutter/material.dart';
import '../Models/Container_Item.dart';
import 'HomePage.dart';

class FamilymembersPage extends StatelessWidget {
  const FamilymembersPage({super.key});

  final List<forAll> mumbers = const [
    forAll(
      sound: "sounds/family_members/grand father.wav",
      image: "assets/images/family_members/family_grandfather.png",
      jpName: "Ojisan",
      enName: "Grand father",
    ),
    forAll(
      sound: "sounds/family_members/grand mother.wav",
      image: "assets/images/family_members/family_grandmother.png",
      jpName: "Sobo",
      enName: "Grand mother",
    ),
    forAll(
      sound: "sounds/family_members/father.wav",
      image: "assets/images/family_members/family_father.png",
      jpName: "Chichioya",
      enName: "Father",
    ),
    forAll(
      sound: "sounds/family_members/mother.wav",
      image: "assets/images/family_members/family_mother.png",
      jpName: "Hahaoya",
      enName: "Mother",
    ),
    forAll(
      sound: "sounds/family_members/older sister.wav",
      image: "assets/images/family_members/family_older_sister.png",
      jpName: "Ane",
      enName: "Older sister",
    ),
    forAll(
      sound: "sounds/family_members/older bother.wav",
      image: "assets/images/family_members/family_older_brother.png",
      jpName: "Nisan",
      enName: "Older brother",
    ),
    forAll(
      sound: "sounds/family_members/younger sister.wav",
      image: "assets/images/family_members/family_younger_sister.png",
      jpName: "Imoto",
      enName: "Yonger sister",
    ),
    forAll(
      sound: "sounds/family_members/younger brohter.wav",
      image: "assets/images/family_members/family_younger_brother.png",
      jpName: "Ototo",
      enName: "Yonger brother",
    ),
    forAll(
      sound: "sounds/family_members/daughter.wav",
      image: "assets/images/family_members/family_daughter.png",
      jpName: "Musumi",
      enName: "Daughter",
    ),
    forAll(
      sound: "sounds/family_members/son.wav",
      image: "assets/images/family_members/family_son.png",
      jpName: "Musuko ",
      enName: "Son",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Family Members", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: mumbers.length,
        itemBuilder: (context, index) {
          return ContainerNumber(
            number: mumbers[index],
            color: Color(0xff528032),
          );
        },
      ),
    );
  }
}
