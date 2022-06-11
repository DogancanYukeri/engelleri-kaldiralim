import 'package:flutter/material.dart';
import 'package:scanner/screens/indexpage.dart';
import 'package:splashscreen/splashscreen.dart';

class MyAppSplashScreen extends StatefulWidget {
  const MyAppSplashScreen({Key? key}) : super(key: key);

  @override
  State<MyAppSplashScreen> createState() => _MyAppSplashScreenState();
}

class _MyAppSplashScreenState extends State<MyAppSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds:  IndexPage(),
      title:  Text(
        'Ödev Splash Screen',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: Image.asset("lib/assets/splashscreen/splash.png"), 
      backgroundColor: Colors.white,
      loaderColor: Colors.black,
    );
  }
}
