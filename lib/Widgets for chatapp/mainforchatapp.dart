import 'package:aaaa/Widgets%20for%20chatapp/Chat_Page.dart';
import 'package:aaaa/Widgets%20for%20chatapp/Login_Page.dart';
import 'package:aaaa/Widgets%20for%20chatapp/Sign_Page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(chatApp());
}

class chatApp extends StatelessWidget {
  const chatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => LoginPage(),
        SignPage.id: (context) => SignPage(),
        ChatPage.id: (context)=> ChatPage()
      },
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
    );
  }
}
