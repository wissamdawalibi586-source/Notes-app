import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'number_Model.dart';

class ContainerNumber extends StatelessWidget {
  const ContainerNumber({super.key, required this.number, required this.color});

  final forAll number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            width: 90,
            height: 100,
            color: Color(0xffFFF4D9),
            child: Image.asset(number.image),
          ),
          Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jpName,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              Text(
                number.enName,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
          Spacer(flex: 20),
          IconButton(
            onPressed: () {
              AudioPlayer player = AudioPlayer();
              player.play(AssetSource(number.sound));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}

class PharsesItem extends StatelessWidget {
  const PharsesItem({super.key, required this.phas, required this.color});

  final pharses phas;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          SizedBox(width: 6),
          Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                phas.jpName,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Text(
                phas.enName,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
          Spacer(flex: 20),
          IconButton(
            onPressed: () {
              AudioPlayer player = AudioPlayer();
              player.play(AssetSource(phas.sound));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
