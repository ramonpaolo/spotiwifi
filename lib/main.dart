import 'package:flutter/material.dart';
import './Nav.dart';
import 'package:simple_splashscreen/simple_splashscreen.dart';

void main() {
  runApp(MaterialApp(
    home: Screen(),
  ));
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Simple_splashscreen(
        context: context,
        splashscreenWidget: SplashScreen(),
        gotoWidget: Nav(),
        timerInSeconds: 2);
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Text(
          "Spotiwifi",
          style: TextStyle(color: Colors.white, fontSize: 34),
        ),
      ),
    );
  }
}
