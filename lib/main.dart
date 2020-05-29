import 'package:flutter/material.dart';
import 'app_home.dart';
import 'dungeon_master_home.dart';
import 'adventurer_home.dart';

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
      routes: {
        '/': (context) => AppHome(),
        '/dm': (context) => DungeonMasterHome(),
        '/adv': (context) => AdventurerHome(),
      },
      title: 'Dungeons & Dragons 5e Assistant',
      initialRoute: '/',
    );
  }
}
