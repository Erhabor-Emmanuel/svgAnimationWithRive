import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class MusicPlayerPage extends StatefulWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  _MusicPlayerPageState createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  late RiveAnimationController _prevButtonController;
  late RiveAnimationController _nextButtonController;

  void _playTrackChangeAnimation(RiveAnimationController controller){
    if(controller.isActive == false){
      controller.isActive = true;
    }
  }

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

    rootBundle.load('assets/PlayPauseButton.riv').then((data) {
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
    });
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
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTapDown: (_)=> _playTrackChangeAnimation(_prevButtonController),
                  child: SizedBox(
                    width: 115,
                    height: 115,
                    child: RiveAnimation.asset(
                        'assets/PrevTrackButton.riv',
                      controllers: [
                        _prevButtonController,
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTapDown: (_){
                    _playTrackChangeAnimation(_nextButtonController);
                  },
                  child: SizedBox(
                    width: 115,
                    height: 115,
                    child: RiveAnimation.asset(
                      'assets/NextTrackButton.riv',
                      controllers: [
                        _nextButtonController,
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
