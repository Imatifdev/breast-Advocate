import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class QuestionNumberIndex extends StatelessWidget {
  int questionNumber;

  QuestionNumberIndex({Key? key, required this.questionNumber})
      : super(key: key);
  // int questionNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        // left: 35,
        right: 280,
        top: 7,
      ),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Container(
          width: 80,
          height: 54,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            //
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                '$questionNumber / 10',
                style: GoogleFonts.mulish(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  // wordSpacing: -0.3,
                  letterSpacing: -0.3,
                ),
              )),
              Lottie.asset('Assets/3.json',
                  width: 40, height: 30, fit: BoxFit.cover),
            ],
          ),
        ),
      ),
    );
  }
}
