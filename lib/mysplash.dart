import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: Home(),
      title: Text('Dictionary',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.black
        )),
        image: Image.asset('assets/dictionary-30.png'),
        photoSize: 50.0,
        backgroundColor: Colors.white,
        loaderColor: Colors.black,

      
    );
  }
}

