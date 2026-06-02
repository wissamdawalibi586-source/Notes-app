import 'package:aaaa/Models/Container_Item.dart';
import 'package:aaaa/Models/number_Model.dart';
import 'package:flutter/material.dart';
import 'package:aaaa/Componts/Cats_items.dart';
import '../Models/number_Model.dart';

class PharsesPage extends StatelessWidget {
  const PharsesPage({super.key});

  final List<pharses> phrases = const [
    pharses(
      sound: "sounds/phrases/are_you_coming.wav",
      jpName: "Kimasuka ?",
      enName: "Are you coming ?",
    ),
    pharses(
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
      jpName: "Chaneru toroku o wasurenaide ne !",
      enName: "Don't forget to subscribe !",
    ),
    pharses(
      sound: "sounds/phrases/how_are_you_feeling.wav",
      jpName: "Go-kibun wa ikaga desu ka ?",
      enName: "How are you felling ?",
    ),
    pharses(
      sound: "sounds/phrases/i_love_anime.wav",
      jpName: "Watashi wa anime ga daisuki desu",
      enName: "I love anime",
    ),
    pharses(
      sound: "sounds/phrases/i_love_programming.wav",
      jpName: "Watashi wa puroguamingu ga daisuki desu",
      enName: "I love programming",
    ),
    pharses(
      sound: "sounds/phrases/programming_is_easy.wav",
      jpName: "Puroguamingu wan kantan desu",
      enName: "Programming is easy",
    ),
    pharses(
      sound: "sounds/phrases/what_is_your_name.wav",
      jpName: "Onamae wa nan desu ka ?",
      enName: "What is your name ?",
    ),
    pharses(
      sound: "sounds/phrases/where_are_you_going.wav",
      jpName: "Doko ni iku no ?",
      enName: "Where are you going ?",
    ),
    pharses(
      sound: "sounds/phrases/yes_im_coming.wav",
      jpName: "Hai watashi wa ikimasu",
      enName: "Yes I'am coming",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Phrases", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PharsesItem(phas: phrases[index], color: Color(0xff47A5CB));
        },
      ),
    );
    ;
  }
}
