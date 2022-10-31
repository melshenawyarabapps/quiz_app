import 'package:flutter/material.dart';

class Question extends StatelessWidget {
   Question({
    Key? key,
    required this.question,
  }) : super(key: key);

  String question;

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}
