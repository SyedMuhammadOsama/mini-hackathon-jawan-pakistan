import 'package:flutter/material.dart';

class BottomNavigationButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  BottomNavigationButton(this.text, this.onPressed, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(text,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
