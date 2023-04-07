import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'music_player_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), ()=> Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => MusicPlayerPage(),
    ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      body: Container(
        width: 400,
        child: RiveAnimation.asset('assets/radioSplashAnimation.riv'),
      ),
    );
  }
}
