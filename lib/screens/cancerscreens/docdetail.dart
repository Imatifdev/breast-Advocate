// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:action_slider/action_slider.dart';
import 'package:pinkgirl/utilities/Mytheme.dart';
import 'package:url_launcher/url_launcher.dart';

class DocDetail extends StatelessWidget {
  const DocDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "About Doctor",
          style: TextStyle(color: CustomTheme.pinkthemecolor, fontSize: 25),
        ),
        iconTheme: IconThemeData(color: CustomTheme.pinkthemecolor),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network(
                    "https://d1t78adged64l7.cloudfront.net/images/profile-pics/doctors/1554297167_amjad-sk.webp?t=1605631781",
                    height: 200,
                    width: 300,
                  ),
                ),
              ],
            ),
            Text(
              "About Dr. Amjad S.K. Durrani",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 213, 81, 125)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Dr. Amjad S.K. Durrani is a top Oncologist with 35 years of experience currently practicing at Wazir Habib Cancer Centre, Lahore. You can book an in-person appointment or an online video consultation with Dr. Amjad S.K. Durrani through oladoc.com or by calling at 04238900939.",
              textAlign: TextAlign.justify,
              style:
                  TextStyle(fontSize: 17, color: Colors.black.withOpacity(0.7)),
            ),
            Text(
              "Experience",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 213, 81, 125)),
            ),
            Text(
              "Dr. Amjad S.K. Durrani has over 35 years of experience in his field.",
              style:
                  TextStyle(fontSize: 17, color: Colors.black.withOpacity(0.7)),
            ),
            Text(
              "Appointment Details",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 213, 81, 125)),
            ),
            Text(
              "In order to book an appointment with Dr. Amjad S.K. Durrani you can call 04238900939 or click the Book Appointment button. You can also book an online video consultation with Dr. Amjad S.K. Durrani by clicking the Video Consultation button..",
              style:
                  TextStyle(fontSize: 17, color: Colors.black.withOpacity(0.7)),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomTheme.pinkthemecolor),
                onPressed: () {
                  _launchURL();
                },
                child: Text("Book your Appointment")),
            SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = "https://oladoc.com/appointment/3310/13967";
  final Uri _url = Uri.parse(url);

  await launchUrl(_url, mode: LaunchMode.externalApplication);
}
