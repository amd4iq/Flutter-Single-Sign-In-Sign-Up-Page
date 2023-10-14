// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatefulWidget {
  final String text;
  void Function() onPressed;
  final double padding;

  final Color backgroundColor;
  MyButton({
    Key? key,
    required this.padding,
    required this.text,
    required this.onPressed, required this.backgroundColor,
  }) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 16,
        ),
        backgroundColor: widget.backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: widget.padding, vertical: 15),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(0),
          )
        ),
      ),
      onPressed: widget.onPressed,
      child: Text(
        widget.text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
