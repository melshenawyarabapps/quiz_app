import 'package:flutter/material.dart';

class Question extends StatelessWidget {
   Question({required this.question}) ;
String question;
  @override
  Widget build(BuildContext context) {
    return  Text(
      '$question',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
