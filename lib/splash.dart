// import 'package:app4_api_get_post/onbaording.dart';
import 'package:app2_grid_rashi/home.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/rashi.jpg"),
            AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText("Rashi",
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 50,
                    fontFamily: 'LobsterN'
                  ), 
                  // speed: Duration(milliseconds: 500),
                  colors: [
                    Colors.red,
                    Colors.orange,
                    Colors.yellow,
                    // Colors.red
                  ]),

               
            ],
            // pause: Duration(milliseconds: 200),
            // onNextBeforePause: ,
            )
            
          ],
        ),
      ),
    );
  }

  navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
