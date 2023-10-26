

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '4_quiz/quiz.dart';
import '4_quiz/sec 4.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Quiz(),
    );
  }
}