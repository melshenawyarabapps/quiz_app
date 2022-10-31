import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_test/answer.dart';
import 'package:quiz_app_test/my_provider.dart';
import 'package:quiz_app_test/question.dart';
import 'package:quiz_app_test/restart_app.dart';

/*



 */

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/lamp.jpg',
            height: 120,
            width: 80,
          ),
          if (Provider.of<MyProvider>(context).index <
              Provider.of<MyProvider>(context).questions.length)
            Question(
              question: Provider.of<MyProvider>(context)
                  .questions[Provider.of<MyProvider>(context).index],
            ),
          if (Provider.of<MyProvider>(context).index <
              Provider.of<MyProvider>(context).questions.length)
            for (int i = 0;
                i <
                    Provider.of<MyProvider>(context)
                        .answers[Provider.of<MyProvider>(context).index]
                        .length;
                i++)
              Answer(
                answer: Provider.of<MyProvider>(context)
                    .answers[Provider.of<MyProvider>(context).index][i]['answer'],
                score:  Provider.of<MyProvider>(context)
                    .answers[Provider.of<MyProvider>(context).index][i]['score'],
              ),
          if (Provider.of<MyProvider>(context).index >=
              Provider.of<MyProvider>(context).questions.length)
            RestartApp(),
        ],
      ),
    );
  }
}

/*


share

date method




 */
