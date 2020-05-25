import 'package:flutter/material.dart';

import 'question_cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dungeons & Dragons 5e Assistant',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dungeons & Dragons 5e Assistant'),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/wallpaper.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Are you a Dungeon Master or an Adventurer?',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    color: Color(0x88F44336),
                    disabledColor: Color(0x88F44336),
                    onPressed: null,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      questionCard('Dungeon Master'),
                      Container(
                        color: Colors.transparent,
                        width: 20,
                      ),
                      questionCard('Adventurer'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
