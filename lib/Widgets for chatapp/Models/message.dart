import 'package:aaaa/Widgets%20for%20chatapp/Constants.dart';

class Message{
  final String message;
  final String id;
  Message(this.message,this.id);
  factory Message.fromJason( jasonData){
    return Message(jasonData[kMessage],jasonData[kId]);
  }
}