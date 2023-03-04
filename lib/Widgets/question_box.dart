import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionBox extends StatelessWidget {
  String question;
  QuestionBox({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17.92, right: 80),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .7,
        height: 90,
        child: Text(
          question,
          // 'Which of the following\n technology used by zomato for\n food delivery ?',
          textAlign: TextAlign.left,
          style: GoogleFonts.mulish(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.3),
        ),
      ),
    );
  }
}
