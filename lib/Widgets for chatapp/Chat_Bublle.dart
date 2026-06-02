import 'package:aaaa/Widgets%20for%20chatapp/Models/message.dart';
import 'package:flutter/material.dart';

import 'Constants.dart';
class ChatBublle extends StatelessWidget {
  const ChatBublle({super.key,required this.message});
 final Message message;
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 8, bottom: 20, top: 20, right: 15),
        margin: EdgeInsets.symmetric(horizontal: 0.5, vertical: 8),

        decoration: BoxDecoration(
          color: kPriamryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Text(
          message.message as String,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );;
  }
}


class ChatBublleforFriend extends StatelessWidget {
  const ChatBublleforFriend({super.key,required this.message});
 final Message message;
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(left: 8, bottom: 20, top: 20, right: 15),
        margin: EdgeInsets.symmetric(horizontal: 7, vertical: 8),

        decoration: BoxDecoration(
          color: Color(0xff006d84),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        child: Text(
          message.message as String,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );;
  }
}
