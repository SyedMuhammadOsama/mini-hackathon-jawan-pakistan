// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final IconData icon;
  TextFormFieldWidget(
      {Key? key,
      required this.hint,
      required this.controller,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 30, left: 10, right: 10),
        child: TextFormField(
          controller: controller,
          style: Theme.of(context).textTheme.bodyLarge?.merge(const TextStyle(
                color: Colors.black,
              )),
          cursorColor: Colors.black,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {}, icon: Icon(icon), color: Colors.grey),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
            hintText: hint,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.merge(const TextStyle(color: Color(0xFF9B8F8F))),
            filled: true,
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.grey)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.grey)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.grey)),
          ),
        ));
  }
}
