
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class sec4 extends StatelessWidget {
  sec4(this.switchScreen ,{super.key}) {
  }
  late void Function () switchScreen;
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
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/quiz.png",
                width: 300,
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                "Learn Flutter",
                style: GoogleFonts.croissantOne(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              OutlinedButton.icon(
                onPressed: switchScreen,
                //      Navigator.push(context,
                //      MaterialPageRoute(builder: (context)=>Ques()));
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                label: Text(
                  "Start Quiz !",
                  style: GoogleFonts.croissantOne(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
