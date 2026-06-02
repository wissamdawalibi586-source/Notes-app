import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  int counter1 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Points Counter", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Team A", style: TextStyle(fontSize: 34)),
                      Text("$counter", style: TextStyle(fontSize: 100)),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.orangeAccent,
                          ),
                          shape: WidgetStatePropertyAll(StadiumBorder()),
                        ),
                        onPressed: () {
                          setState(() {
                            counter += 1;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 13),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.orangeAccent,
                          ),
                          shape: WidgetStatePropertyAll(StadiumBorder()),
                        ),
                        onPressed: () {
                          setState(() {
                            counter += 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 13),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.orangeAccent,
                          ),
                          shape: WidgetStatePropertyAll(StadiumBorder()),
                        ),
                        onPressed: () {
                          setState(() {
                            counter += 3;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),

                  VerticalDivider(thickness: 2, color: Colors.grey),

                  Column(
                    children: [
                      Text("Team B", style: TextStyle(fontSize: 34)),
                      Text("$counter1", style: TextStyle(fontSize: 100)),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.orangeAccent,
                          ),
                          shape: WidgetStatePropertyAll(StadiumBorder()),
                        ),
                        onPressed: () {
                          setState(() {
                            counter1 += 1;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 13),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.orangeAccent,
                          ),
                          shape: WidgetStatePropertyAll(StadiumBorder()),
                        ),
                        onPressed: () {
                          setState(() {
                            counter1 += 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 13),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.orangeAccent,
                          ),
                          shape: WidgetStatePropertyAll(StadiumBorder()),
                        ),
                        onPressed: () {
                          setState(() {
                            counter1 += 3;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              width: 150,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.orangeAccent),
                  shape: WidgetStatePropertyAll(StadiumBorder()),
                ),
                onPressed: () {
                  setState(() {
                    counter = 0;
                    counter1 = 0;
                  });
                },
                child: Text("Reset", style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
