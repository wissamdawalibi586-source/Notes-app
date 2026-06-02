import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff4E5F69),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 102,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/00.jpg"),
                    radius: 100,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Wissam Dawalibi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  "FLUTTER DEVELOPPER",
                  style: TextStyle(color: Colors.grey.shade200),
                ),
                Container(width: 260,
                    child:
                Divider(thickness: 0.5,height: 10,)),
                SizedBox(height: 10),
                Container(
                  width: 280,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Spacer(flex: 1),
                      Icon(Icons.phone, size: 27,color: Color(0xffCF807C),),

                      Spacer(flex: 1),
                      Text("+963 997252531", style: TextStyle(fontSize: 17)),
                      Spacer(flex: 4),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 280,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 18),
                         child: Icon(Icons.email_outlined, size: 27,color: Color(0xffCF807C)),
                       ),

                      Spacer(flex: 3),
                      Text(
                        "wissamo19@gmail.com",
                        style: TextStyle(fontSize: 17),
                      ),
                      Spacer(flex: 4),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
