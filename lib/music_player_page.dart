import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class MusicPlayerPage extends StatefulWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  _MusicPlayerPageState createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  late RiveAnimationController _prevButtonController;
  late RiveAnimationController _nextButtonController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _prevButtonController = OneShotAnimation(
      'onPrev',
      autoplay: false,
    );
    _nextButtonController = OneShotAnimation(
        'onNext',
      autoplay: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/album_cover.png',
                  ),
                ),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
