import 'package:flutter/material.dart';
import 'package:hackathon/widgets/bottom_navigation_button.dart';

import 'login_screen.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/w3.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 390,
                ),
                Row(
                  children: [
                    Text(
                      'No',
                      style: TextStyle(
                          fontSize: 17.55,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    Text(
                      '3',
                      style: TextStyle(
                          fontSize: 51.8421,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )
                  ],
                ),
                Text(
                  'Featured',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
                Text(
                  'Tailored',
                  style: TextStyle(fontSize: 51.8421, color: Colors.white),
                ),
                Row(
                  children: [
                    Text('jhon',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    Text(
                      'details',
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    )
                  ],
                ),
                BottomNavigationButton('Shop Now', () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LoginScreen.routeName, (route) => false);
                })
              ]),
        ),
      ),
    );
  }
}
