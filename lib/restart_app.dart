import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_test/my_provider.dart';

class RestartApp extends StatelessWidget {
  const RestartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Your score is : ${Provider.of<MyProvider>(context).score}'),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            Provider.of<MyProvider>(context, listen: false).restart();
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
              'Restart ?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        )
      ],
    );
  }
}
