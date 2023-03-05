// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../utilities/Mytheme.dart';
import 'package:action_slider/action_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class Symtoms extends StatelessWidget {
  const Symtoms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: CustomTheme.pinkthemecolor),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("What are the signs and symptoms of breast cancer ?",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: CustomTheme.pinkthemecolor)),
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
                "The signs and symptoms of breast cancer include:",
                style: TextStyle(
                    fontSize: 20, color: Colors.black.withOpacity(0.7)),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_left,
                  size: 30,
                ),
                subtitle: Text(
                  "A new lump or thickening in or near the breast or in the armpit.",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.7)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_left,
                  size: 30,
                ),
                subtitle: Text(
                  "A change in the size or shape of the breast.",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.7)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_left,
                  size: 30,
                ),
                subtitle: Text(
                  "A dimple or puckering in the skin of the breast. It may look like the skin of an orange.",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.7)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_left,
                  size: 30,
                ),
                subtitle: Text(
                  "A nipple turned inward into the breast.",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.7)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_left,
                  size: 30,
                ),
                subtitle: Text(
                  "Nipple discharge other than breast milk. The discharge might happen suddenly, be bloody, or happen in only one breast.",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.7)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_left,
                  size: 30,
                ),
                subtitle: Text(
                  "Scaly, red, or swollen skin in the nipple area or the breast",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.7)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_left,
                  size: 30,
                ),
                subtitle: Text(
                  "Pain in any area of the breast.",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.7)),
                ),
              ),
              Image.asset(
                "Assets/sys.jpg",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 20,
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
                        color: CustomTheme.pinkthemecolor,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child:
                          const Icon(Icons.check_rounded, color: Colors.white)),
                  foregroundBuilder: (context, state, child) => child!,
                  backgroundChild: Center(
                      child: Text(
                    '     Slide to learn more symtoms...',
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
    );
  }
}

_launchURL() async {
  const url =
      "https://www.cancercenter.com/cancer-types/breast-cancer/symptoms";
  final Uri _url = Uri.parse(url);

  await launchUrl(_url, mode: LaunchMode.externalApplication);
}
