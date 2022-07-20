import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackathon/screens/login_screen.dart';

import 'welcome_screen1.dart';
import 'welcome_screen2.dart';
import 'welcome_screen4.dart';
import 'welcome_sreen3.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => PageView(
                children: [
                  WelcomeScreen1(),
                  WelcomeScreen2(),
                  WelcomeScreen3(),
                  WelcomeScreen4()
                ],
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 27, 70),
      body: Center(child: Image.asset('assets/Vector (2).png')),
    );
  }
}
