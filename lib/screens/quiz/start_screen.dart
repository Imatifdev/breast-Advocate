// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../../controller/index_controller.dart';
import 'home_screen.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              insetPadding: EdgeInsets.zero,
              contentTextStyle: GoogleFonts.mulish(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: const Text('Quit Quiz?'),
              content: const Text(
                'Are you sure you want exit!',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => exit(0)));
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text('No'),
                ),
              ],
            );
          },
        );
        return shouldPop!;
      },
      child: Consumer<IndexController>(builder: (context, provider, child) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 140,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  child: SwipeableButtonView(
                    buttonText: 'Slide To Start Test',
                    buttontextstyle:
                        TextStyle(color: Colors.black, fontSize: 17),
                    buttonWidget: Container(
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.grey,
                      ),
                    ),
                    activeColor: Colors.grey.shade300,
                    isFinished: isFinished,
                    onWaitingProcess: () {
                      Future.delayed(Duration(seconds: 2), () {
                        setState(() {
                          isFinished = true;
                        });
                      });
                    },
                    onFinish: () {
                      provider.restartIndexForQuestion();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => FirstPage()));

                      setState(() {
                        isFinished = false;
                      });
                    },
                  ),
                ),
                // AnimatedButton(
                //   height: 70,
                //   width: MediaQuery.of(context).size.width - 100,
                //   text: 'Test Your Personality',
                //   isReverse: true,
                //   selectedTextColor: Colors.black,
                //   transitionType: TransitionType.CENTER_LR_IN,
                //   textStyle: GoogleFonts.mulish(
                //     fontWeight: FontWeight.w700,
                //     fontSize: 24,
                //     color: const Color.fromRGBO(66, 130, 241, 1),
                //   ),
                //   backgroundColor: Colors.grey.shade200,
                //   borderColor: Colors.grey.shade200,
                //   borderRadius: 50,
                //   borderWidth: 2,
                //   onPress: () {
                //     provider.restartIndexForQuestion();
                //     Navigator.pushReplacement(context,
                //         MaterialPageRoute(builder: (context) => FirstPage()));
                //   },
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                ),
                Lottie.asset(
                  'Assets/2.json',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .5,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
