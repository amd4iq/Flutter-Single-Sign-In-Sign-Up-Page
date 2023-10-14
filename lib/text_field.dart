// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;

  const MyTextField({
    Key? key,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        obscureText: widget.obscureText,
        keyboardType:
            widget.hintText == 'Email' || widget.hintText == 'Confirm Email'
                ? TextInputType.emailAddress
                : TextInputType.text,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
