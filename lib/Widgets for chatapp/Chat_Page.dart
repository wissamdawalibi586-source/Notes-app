import 'package:aaaa/Widgets%20for%20chatapp/Constants.dart';
import 'package:aaaa/Widgets%20for%20chatapp/Models/message.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Chat_Bublle.dart';

class ChatPage extends StatefulWidget {
  static String id = "ChatPage";

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  CollectionReference messages = FirebaseFirestore.instance.collection(
    kMessagesrCollections,
  );
  final controller1 = ScrollController();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(kcreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(Message.fromJason(snapshot.data!.docs[i]));
          }
          return Scaffold(
            appBar: AppBar(
              backgroundColor: kPriamryColor,
              automaticallyImplyLeading: false,

              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(kLogo, height: 57),
                  Text("Chat", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),

            body: Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      controller: controller1,
                      itemCount: messagesList.length,
                      itemBuilder: (context, index) {
                        return messagesList[index].id == email
                            ? ChatBublle(message: messagesList[index])
                            : ChatBublleforFriend(message: messagesList[index]);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                      right: 10,
                      top: 5,
                    ),
                    child: TextField(
                      controller: controller,
                      onSubmitted: (data) {
                        print(
                          messages.add({
                            kId: email,
                            kMessage: data,
                            kcreatedAt: DateTime.now(),
                          }),
                        );
                        controller.clear();
                        controller1.animateTo(
                          0,
                          duration: Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                      cursorColor: kPriamryColor,
                      decoration: InputDecoration(
                        hintText: "Send Message",
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        suffix: Icon(Icons.send, color: kPriamryColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kPriamryColor),
                          borderRadius: BorderRadius.circular(25),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Text("Loading");
        }
      },
    );
  }
}
