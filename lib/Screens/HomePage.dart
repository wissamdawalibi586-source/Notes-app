import 'package:aaaa/Screens/FamilyMembers_Page.dart';
import 'package:aaaa/Screens/Colors_Page.dart';
import 'package:aaaa/Screens/Numbers_Page.dart';
import 'package:aaaa/Screens/Pharses_Page.dart';
import 'package:flutter/material.dart';
import '../Componts/Cats_items.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xffFFF4D9),
        appBar: AppBar(
          title: Text("Toku", style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xff49332A),
        ),
        body: Column(
          children: [
            Catigo("Numbers", Color(0xffF99531), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumbersPage()),
              );
            }),
            Catigo("Family Members", Color(0xff528032), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FamilymembersPage()),
              );
            }),
            Catigo("Colors", Color(0xff7D40A2), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColorsPage()),
              );
            }),
            Catigo("Phases", Color(0xff47A5CB), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PharsesPage()),
              );
            }),
          ],
        ),
      ),
    );
  }
}
