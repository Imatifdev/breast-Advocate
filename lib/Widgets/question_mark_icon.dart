import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class QuestionMarkIcon extends StatelessWidget {
  const QuestionMarkIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Lottie.asset(
        'Assets/c.json',
        width: 250,
        height: 250,
      ),
    );
  }
}
