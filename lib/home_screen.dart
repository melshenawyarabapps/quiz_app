import 'package:flutter/material.dart';
import 'package:quiz_app_test/question.dart';

import 'answer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  List questions = [
    'What is your fav meal ?',
    'What is your fav player ?',
    'What is your fav color ?',
  ];

  List answers = [
    [
      {
        'text': 'Pasta',
        'score': 10,
      },
      {
        'text': 'Pizza',
        'score': 0,
      },
      {
        'text': 'Stack',
        'score': 0,
      }
    ],
    [
      {
        'text': 'Mo salah',
        'score': 0,
      },
      {
        'text': 'CR7',
        'score': 0,
      },
      {
        'text': 'Messi',
        'score': 10,
      }
    ],
    [
      {
        'text': 'Black',
        'score': 0,
      },
      {
        'text': 'Blue',
        'score': 10,
      },
      {
        'text': 'White',
        'score': 0,
      }
    ]
  ];

  int index = -1;
  int score = 0;

  calScore({required int score}) {
    this.score += score;
    setState(() {});
  }

  changeIndex() {
    index++;
    setState(() {});
  }

  restart() {
  score = 0;
    index = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/lamp.jpg',
              height: 120,
              width: 100,
            ),
            SizedBox(
              height: 15,
            ),
            if (index == -1)
              GestureDetector(
                onTap: () {
                  changeIndex();
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Quiz',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            if (index == questions.length)
              Column(
                children: [
                  Text('$score'),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      restart();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Restart',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            if (index > -1 && index < questions.length)
              Question(
                question: questions[index],
              ),
            SizedBox(
              height: 15,
            ),
            if (index > -1 && index < questions.length)
              ...answers[index].map((element) {
                return Answer(
                  changeIndex: (){
                    changeIndex();
                  },
                  element: element['text'],
                  calScore: (){
                    calScore(score: element['score']);
                  },
                );
              }).toList(),
          ],
        ),
      ),
    );
  }
}

/*

[...[],[],[]],

[1,2,3,]

[
Widget(),Widget(),
Widget(),
Widget(),
...[

]
]

 */
