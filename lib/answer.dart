import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

class Answer extends StatelessWidget {
  Answer({
    Key? key,
    required this.answer,
    required this.score
  }) : super(key: key);

  String answer;
  int score;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<MyProvider>(context, listen: false).calScore(score: score);
        Provider.of<MyProvider>(context, listen: false).changeIndex();
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 8,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orangeAccent,
        ),
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
