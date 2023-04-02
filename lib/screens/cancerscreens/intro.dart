// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:accordion/accordion.dart';
import 'package:action_slider/action_slider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Widgets/youtubeplay.dart';
import '../../utilities/Mytheme.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: CustomTheme.pinkthemecolor),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What Is Cancer?",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 213, 81, 125)),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Understanding Breast Cancer",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 213, 81, 125)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Cancer is a broad term for a class of diseases characterized by abnormal cells that grow and invade  healthy cells in the body.  Breast cancer starts in the cells of the breast as a group of cancer cells that can then invade surrounding tissues or spread (metastasize) to other areas of the body.",
                  style: TextStyle(
                      fontSize: 17, color: Colors.black.withOpacity(0.7)),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset("Assets/intro.jpeg"),
                YoutubeVideo("https://www.youtube.com/watch?v=KyeiZJrWrys"),
                Accordion(
                  disableScrolling: false,
                  contentBorderColor: Color.fromARGB(255, 213, 81, 125),
                  maxOpenSections: 1,
                  headerBackgroundColorOpened: Colors.pink,
                  //scaleWhenAnimating: true,
                  openAndCloseAnimation: false,
                  headerPadding: const EdgeInsets.only(
                      left: 10, top: 10, bottom: 10, right: 10),
                  children: [
                    AccordionSection(
                      rightIcon: Icon(
                        Icons.arrow_downward_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      isOpen: true,
                      headerBackgroundColor: Colors.grey.shade300,
                      headerBackgroundColorOpened:
                          Color.fromARGB(255, 213, 81, 125),
                      header: Text(
                        'Causes of Breast Cancer',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 213, 81, 125),
                        ),
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Protect Your Health",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 213, 81, 125),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          YoutubeVideo(
                              "https://www.youtube.com/watch?v=f88wEMxVi2w"),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Did you know that 1 in 8 women will be diagnosed with breast cancer in her lifetime? While you can’t usually prevent cancer, it is important to be proactive about your health. Get the free Healthy Living and Personal Risk Guide to help you protect your overall health and assess your breast cancer risk",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 10,
                      contentBorderWidth: 1,
                      // onOpenSection: () => print('onOpenSection ...'),
                      // onCloseSection: () => print('onCloseSection ...'),
                    ),
                    AccordionSection(
                      rightIcon: Icon(
                        Icons.arrow_downward_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      isOpen: true,
                      headerBackgroundColor: Colors.grey.shade300,
                      headerBackgroundColorOpened:
                          Color.fromARGB(255, 213, 81, 125),
                      header: Text(
                        'Breast Cancer Facts',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 213, 81, 125),
                        ),
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("What Is Breast Cancer?",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 213, 81, 125),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Breast cancer is a disease in which malignant (cancer) cells form in the tissues of the breast. ",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Image.asset("Assets/intro2.jpg"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "> In 2022, an estimated 287,500 new cases of invasive breast cancer will be diagnosed in women in the U.S. as well as 51,400 new cases of non-invasive (in situ) breast cancer.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          Text(
                            "> This year, an estimated 43,550 women will die from breast cancer in the U.S.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          Text(
                            "> Although rare, men get breast cancer too. In 2022, an estimated 2,710 men will be diagnosed with breast cancer in the U.S. and approximately 530 men will die from breast cancer.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          Text(
                            "> 1 in 8 women in the United States will be diagnosed with breast cancer in her lifetime",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          Text(
                            "> Breast cancer is the most common cancer in American women, except for skin cancers. It is estimated that in 2022, approximately 30% of all new women cancer diagnoses will be breast cancer.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          Text(
                            "> There are over 3.8 million breast cancer survivors in the United States.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          Text(
                            "> On average, every 2 minutes a woman is diagnosed with breast cancer in the United States.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 10,
                      contentBorderWidth: 1,
                      // onOpenSection: () => print('onOpenSection ...'),
                      // onCloseSection: () => print('onCloseSection ...'),
                    ),
                    AccordionSection(
                      rightIcon: Icon(
                        Icons.arrow_downward_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      isOpen: true,
                      headerBackgroundColor: Colors.grey.shade300,
                      headerBackgroundColorOpened:
                          Color.fromARGB(255, 213, 81, 125),
                      header: Text(
                        'Breast Tumors',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 213, 81, 125),
                        ),
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("What Is A Tumor?",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 213, 81, 125),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "A tumor is a mass of abnormal tissue. There are two types of breast cancer tumors: those that are non-cancerous, or ‘benign’, and those that are cancerous, which are ‘malignant’.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Benign Tumors",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 213, 81, 125),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "When a tumor is diagnosed as benign, doctors will usually leave it alone rather than remove it. Even though these tumors are not generally aggressive toward surrounding tissue, occasionally they may continue to grow, pressing on other tissue and causing pain or other problems. In these situations, the tumor is removed, allowing pain or complications to subside.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          YoutubeVideo(
                              "https://www.youtube.com/watch?v=YV2NBidSuLU"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Malignant tumors",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 213, 81, 125),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Malignant tumors are cancerous and may be aggressive because they invade and damage surrounding tissue. When a tumor is suspected to be malignant, the doctor will perform a biopsy to determine the severity or aggressiveness of the tumor.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          Text("Metastatic cancer",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 213, 81, 125),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Metastatic cancer is when cancer cells of a malignant tumor spread to other parts of the body, usually through the lymph system or by using the blood stream, and form a secondary tumor",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 10,
                      contentBorderWidth: 1,
                      // onOpenSection: () => print('onOpenSection ...'),
                      // onCloseSection: () => print('onCloseSection ...'),
                    ),
                  ],
                ),
                Center(
                  child: ActionSlider.custom(
                    toggleMargin: EdgeInsets.zero,
                    width: 300.0,
                    toggleWidth: 60.0,
                    height: 60.0,
                    backgroundColor: Colors.pink.shade100,
                    foregroundChild: Container(
                        decoration: const BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: const Icon(Icons.check_rounded,
                            color: Colors.white)),
                    foregroundBuilder: (context, state, child) => child!,
                    backgroundChild: Center(
                        child: Text(
                      'Slide to learn more...',
                    )),
                    backgroundBuilder: (context, state, child) => ClipRect(
                        child: OverflowBox(
                            maxWidth: state.standardSize.width,
                            maxHeight: state.toggleSize.height,
                            minWidth: state.standardSize.width,
                            minHeight: state.toggleSize.height,
                            child: child!)),
                    backgroundBorderRadius: BorderRadius.circular(5.0),
                    action: (controller) async {
                      controller.loading(); //starts loading animation
                      await Future.delayed(
                          const Duration(seconds: 3), _launchURL);
                      controller.success(); //starts success animation
                      await Future.delayed(const Duration(seconds: 1));
                      controller.reset(); //resets the slider
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = "https://www.nationalbreastcancer.org/what-is-breast-cancer/";
  final Uri _url = Uri.parse(url);

  await launchUrl(_url, mode: LaunchMode.externalApplication);
}
