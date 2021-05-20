import 'package:flutter/material.dart';

class Disclaimer extends StatefulWidget {
  @override
  _DisclaimerState createState() => _DisclaimerState();
}

class _DisclaimerState extends State<Disclaimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Disclaimer",
        style: TextStyle(
            // backgroundColor: Colors.black,
            fontFamily: "Pangolin",
            fontSize: 30,
          )
        ),
        centerTitle: true,
      ),
      body: Column(
        children:<Widget>[
          Center(child: Text('\n\nThis is a demo Disclaimer.\n\n',
          style: TextStyle(
            // backgroundColor: Colors.black,
            fontFamily: "Pangolin",
            fontSize: 30,
          )
          )),
          Center(child: Text('©2021 S&T Dictionaries Ltd.'),)
        ]
      ),
    );
  }
}