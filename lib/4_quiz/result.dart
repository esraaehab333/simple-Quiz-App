import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Data/QuesData.dart';

class Result extends StatelessWidget {
  const Result(this.selected, this.restart, {super.key});
  final void Function() restart;
  final List<String> selected;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selected.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question": questions[i].text,
          "correct_answer": questions[i].ans[0],
          "user_anwser": selected[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summarydata = getSummaryData();
    var numofcorrect = 0;
    for (var i = 0; i < selected.length; i++) {
      if (summarydata[i]["user_anwser"] == summarydata[i]["correct_answer"])
        numofcorrect++;
    }
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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top:40,bottom: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "You answered $numofcorrect out 10 Questions correctly",
                      style: GoogleFonts.croissantOne(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ...getSummaryData().map(
                      (e) => Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor:
                                      e["user_anwser"] == e["correct_answer"]
                                          ? Colors.blue
                                          : Colors.redAccent,
                                  child: Text(
                                    style: GoogleFonts.croissantOne(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                    (( e["question_index"] as int )+1).toString(),
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e["question"].toString(),
                                        style: GoogleFonts.croissantOne(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        e["user_anwser"].toString(),
                                        style: GoogleFonts.abel(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        e["correct_answer"].toString(),
                                        style: GoogleFonts.croissantOne(
                                          fontSize: 14,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton.icon(
                      icon: Icon(Icons.restart_alt, color: Colors.white),
                      onPressed:restart,
                      label: Text(
                        "Restart Quiz!",
                        style: GoogleFonts.croissantOne(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

        ),
      ),
    );
  }
}
