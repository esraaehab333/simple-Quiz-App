
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Data/QuesData.dart';
import 'anwserButton.dart';

class Ques extends StatefulWidget {
  Ques(this.onSelected,{super.key});
  late final void Function(String) onSelected ;
  @override
  State<Ques> createState() => _QuesState();
}

class _QuesState extends State<Ques> {
  var currntindex = 0;

  void answerQues(String ans) {
    setState(() {
      currntindex = currntindex + 1;
      widget.onSelected(ans);
    });
  }

  @override
  Widget build(BuildContext context) {
    final curant = questions[currntindex];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.purpleAccent,
            ],
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                curant.text,
                style: GoogleFonts.croissantOne(
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              ...curant.getshuffledAnswers().map((e) {
                return Container(
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  child: Answer(
                    anstext: e,
                    onPressed: ()
                    {
                      answerQues(e);
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
