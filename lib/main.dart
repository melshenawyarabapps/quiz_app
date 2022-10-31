import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_test/my_provider.dart';

import 'home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context){
        return MyProvider();
      },
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
