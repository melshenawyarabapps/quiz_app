import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  List questions = [
    'Question 1 ?',
    'Question 2 ?',
    'Question 3 ?',
  ];

  int index = 0;

  int score = 0;

  List answers = [
    [
      {
        'answer': 'Answer q 1 1 ?',
        'score': 10,
      },
      {
        'answer': 'Answer q 1 2 ?',
        'score': 0,
      },
    ],
    [
      {
        'answer': 'Answer q 2 1 ?',
        'score': 0,
      },
      {
        'answer': 'Answer q 2 2 ?',
        'score': 10,
      },
      {
        'answer': 'Answer q 2 3 ?',
        'score': 0,
      },
    ],
    [
      {
        'answer': 'Answer q 3 1 ?',
        'score': 0,
      },
      {
        'answer': 'Answer q 3 2 ?',
        'score': 0,
      },
      {
        'answer': 'Answer q 3 3 ?',
        'score': 10,
      },
      {
        'answer': 'Answer q 3 4 ?',
        'score': 0,
      },
    ],
  ];

  changeIndex() {
    index++;
    notifyListeners();
  }

  calScore({
    required int score,
  }) {
    this.score += score;
    notifyListeners();
  }

  restart() {
    index = 0;
    score = 0;
    notifyListeners();
  }
}
