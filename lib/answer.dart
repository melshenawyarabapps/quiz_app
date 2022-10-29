import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer({
    required this.changeIndex,
    required this.element,
    required this.calScore,
  });

  Function changeIndex;
  String element;
  Function calScore;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeIndex();
        calScore();
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          '${element}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}
