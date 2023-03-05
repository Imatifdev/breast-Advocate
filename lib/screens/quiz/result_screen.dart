// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pinkgirl/screens/dashboard.dart';
import 'package:pinkgirl/utilities/Mytheme.dart';
import 'package:provider/provider.dart';
import '../../../controller/index_controller.dart';
import 'start_screen.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget {
  ResultPage({super.key, required this.marksEarnedFromQuiz});

  int marksEarnedFromQuiz = 0;

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
      child: Consumer<IndexController>(
          builder: (context, getIndexProvider, child) {
        return Scaffold(
          backgroundColor: CustomTheme.pinkthemecolor,
          appBar: AppBar(
            backgroundColor: CustomTheme.pinkthemecolor,
            leading: marksEarnedFromQuiz > 4
                ? IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                insetPadding: EdgeInsets.zero,
                                contentTextStyle: GoogleFonts.mulish(),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                title: const Text(
                                  'Back to home?',
                                ),
                                content: const Text(
                                  'Are you sure want to\nrestart the quiz',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text(
                                      'NO',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(66, 130, 241, 1)),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const StartQuiz())),
                                    child: const Text(
                                      'YES',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(66, 130, 241, 1)),
                                    ),
                                  ),
                                ],
                              ));
                    },
                  )
                : const SizedBox(),
            centerTitle: true,
            title: Text(
              '',
              style: GoogleFonts.mulish(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.3,
                fontSize: 20,
              ),
            ),
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Ancipating your answers,we have predicted',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.mulish(
                    color: CustomTheme.greythemecolor,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.3,
                    fontSize: 25,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 149.33,
                    height: 149.33,
                    child: CircularPercentIndicator(
                      backgroundColor: const Color.fromRGBO(230, 230, 230, 1),
                      animation: true,
                      radius: 70,
                      lineWidth: 13.0,
                      percent: marksEarnedFromQuiz / 10,
                      animationDuration: 1000,
                      reverse: true,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text(
                        "$marksEarnedFromQuiz/10",
                        style: GoogleFonts.mulish(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.3,
                          fontSize: 15,
                        ),
                      ),
                      progressColor: marksEarnedFromQuiz > 4
                          ? const Color.fromRGBO(82, 186, 0, 1)
                          : Color.fromARGB(255, 230, 97, 14),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         if (marksEarnedFromQuiz < 2)
                  //           Container(
                  //             width: 150,
                  //             height: 40,
                  //             decoration: BoxDecoration(
                  //               color: const Color.fromRGBO(254, 123, 30, 1),
                  //               borderRadius: BorderRadius.circular(20),
                  //             ),
                  //             child: Center(
                  //               child: Text(
                  //                 'You need 8',
                  //                 style: GoogleFonts.poppins(
                  //                   color: const Color.fromRGBO(255, 255, 255, 1),
                  //                   fontWeight: FontWeight.w800,
                  //                   letterSpacing: -0.3,
                  //                   fontSize: 12,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         InkWell(
                  //           onTap: () {
                  //             Get.to(StartQuiz());
                  //           },
                  //           child: Text(
                  //             'Test Personality Again',
                  //             textAlign: TextAlign.center,
                  //             style: GoogleFonts.mulish(
                  //               decoration: TextDecoration.underline,
                  //               color: const Color.fromRGBO(66, 130, 241, 1),
                  //               fontWeight: FontWeight.w700,
                  //               letterSpacing: -0.3,
                  //               fontSize: 15,
                  //             ),
                  //           ),
                  //         ),
                  //         if (marksEarnedFromQuiz < 4 && marksEarnedFromQuiz > 2)
                  //           Container(
                  //             width: 150,
                  //             height: 40,
                  //             decoration: BoxDecoration(
                  //               color: const Color.fromRGBO(254, 123, 30, 1),
                  //               borderRadius: BorderRadius.circular(20),
                  //             ),
                  //             child: Center(
                  //               child: Text(
                  //                 'You need Consulation',
                  //                 style: GoogleFonts.poppins(
                  //                   color: const Color.fromRGBO(255, 255, 255, 1),
                  //                   fontWeight: FontWeight.w800,
                  //                   letterSpacing: -0.3,
                  //                   fontSize: 12,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         if (marksEarnedFromQuiz < 6 && marksEarnedFromQuiz > 4)
                  //           Container(
                  //             width: 150,
                  //             height: 40,
                  //             decoration: BoxDecoration(
                  //               color: const Color.fromRGBO(254, 123, 30, 1),
                  //               borderRadius: BorderRadius.circular(20),
                  //             ),
                  //             child: Center(
                  //               child: Text(
                  //                 'You need Consulation tisi',
                  //                 style: GoogleFonts.poppins(
                  //                   color: const Color.fromRGBO(255, 255, 255, 1),
                  //                   fontWeight: FontWeight.w800,
                  //                   letterSpacing: -0.3,
                  //                   fontSize: 12,
                  //                 ),
                  //               ),
                  //             ),
                  //           )
                  marksEarnedFromQuiz < 5
                      ? Column(
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  'You are at a high risk of having breast cancer and are suggested to visit your oncologist for mamography session as soon as possible',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    letterSpacing: -0.3,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        CustomTheme.greythemecolor),
                                onPressed: () {},
                                child: Text(
                                  "Consult with Doctor",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ))
                          ],
                        )
                      : Container(
                          child: Center(
                              child: Text(
                            'Hurrahhh ! You are not at a risk of having breast cancer at present, but still would advice you to go for mammography every two years.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.mulish(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.3,
                              fontSize: 15,
                            ),
                          )),
                        ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  marksEarnedFromQuiz < 5
                      ? Padding(
                          padding: const EdgeInsets.only(
                            top: 23,
                          ),
                          child: Column(
                            children: [
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        CustomTheme.greythemecolor),
                                onPressed: () {
                                  Get.to(DashBoard());
                                },
                                icon: Icon(
                                  Icons.dashboard,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Move to Dashboard',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.3,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Container(
                                  width: 250,
                                  height: 50,
                                  color: Colors.white,
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            CustomTheme.greythemecolor),
                                    onPressed: () {
                                      Get.to(StartQuiz());
                                    },
                                    icon: Icon(
                                      Icons.restart_alt,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                    label: Text(
                                      'Test to yourself again',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.3,
                                        fontSize: 15,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(
                            top: 23,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 160,
                                height: 60,
                                color: Colors.white,
                                child: Text(
                                  'Congratulations\n You are saved',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.3,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 229, 176, 40)),
                                  onPressed: () {
                                    Get.to(DashBoard());
                                  },
                                  child: Text("Move to Dashboard")),
                              InkWell(
                                onTap: () {
                                  Get.to(StartQuiz());
                                },
                                child: Text(
                                  'Want to Retest',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    decoration: TextDecoration.underline,
                                    color:
                                        const Color.fromRGBO(66, 130, 241, 1),
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.3,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
