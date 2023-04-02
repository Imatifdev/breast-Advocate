// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pinkgirl/screens/cancerscreens/consultation.dart';
import 'package:pinkgirl/screens/survivors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utilities/Mytheme.dart';
import '../utilities/methods.dart';
import 'chat/chathome.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: size.height / 14,
                  width: size.width,
                  alignment: Alignment.center,
                  child: Container(
                    height: size.height / 14,
                    width: size.width / 1.15,
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search)),
                        hintText: "Search...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Consultation",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          "With Doctor",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => Doctor()),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Image(
                          fit: BoxFit.cover,
                          height: 80,
                          width: 150,
                          image: AssetImage('Assets/doctors.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Meet",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          "With Survivors",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => Survivor()),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Image(
                          fit: BoxFit.cover,
                          height: 80,
                          width: 150,
                          image: AssetImage('Assets/surv.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Search",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          "Near by Hospital",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        _launchURL();
                      },
                      child: GestureDetector(
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 10,
                          child: Image(
                            fit: BoxFit.contain,
                            height: 80,
                            width: 150,
                            image: AssetImage('Assets/maphsp.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Meet",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          "With Friends",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => ChatHome());
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Image(
                          fit: BoxFit.contain,
                          height: 80,
                          width: 150,
                          image: AssetImage('Assets/fre.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
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
  const url =
      "https://www.google.com/maps/search/breast+cancer+hospital+in+lahore/@31.5435477,74.2503422,13z/data=!3m1!4b1?hl=en";
  final Uri _url = Uri.parse(url);

  await launchUrl(_url, mode: LaunchMode.externalApplication);
}
