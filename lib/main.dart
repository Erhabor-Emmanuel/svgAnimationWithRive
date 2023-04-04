import 'package:flutter/material.dart';
import 'music_player_page.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter SVG Animations With Rive',
      home: MusicPlayerPage(),
    );
  }
}
