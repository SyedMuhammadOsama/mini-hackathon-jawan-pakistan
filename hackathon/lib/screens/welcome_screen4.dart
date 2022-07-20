import 'package:flutter/material.dart';
import 'package:hackathon/widgets/bottom_navigation_button.dart';

import 'login_screen.dart';

class WelcomeScreen4 extends StatelessWidget {
  const WelcomeScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/vishal-banik-535458-unsplash.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                BottomNavigationButton('Continue With Instagram', () {}),
                Text(
                  'By clicking this button you agree to our',
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('terms of services',
                          style: TextStyle(color: Colors.white)),
                    ),
                    Text('and', style: TextStyle(color: Colors.white)),
                    TextButton(
                      onPressed: () {},
                      child: Text('terms of services',
                          style: TextStyle(color: Colors.white)),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
