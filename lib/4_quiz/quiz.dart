import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz/4_quiz/questions.dart';
import 'package:quiz/4_quiz/result.dart';
import 'package:quiz/4_quiz/sec%204.dart';

import 'Data/QuesData.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selected = [];
  void chooseAnswer(String s) {
    setState(() {
      selected.add(s);
      if (selected.length == questions.length) {
        activeScreen = Result(selected,restart);

      }
    });
    log(selected.toString());
  }
void restart()
{
  setState(() {
    selected = [];
    activeScreen = sec4(switchScreen);
  });

}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    activeScreen = sec4(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = Ques(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.purpleAccent,
            ],
          ),
        ),
        child: activeScreen,
      ),
    );
  }
}
