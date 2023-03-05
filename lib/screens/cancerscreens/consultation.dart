// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pinkgirl/screens/cancerscreens/docdetail.dart';
import 'package:get/get.dart';

import '../../utilities/Mytheme.dart';

class Doctor extends StatelessWidget {
  const Doctor({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(DocDetail());
              },
              child: Card(
                elevation: 10,
                child: Container(
                  height: 90,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://d1t78adged64l7.cloudfront.net/images/profile-pics/doctors/1554297167_amjad-sk.webp?t=1605631781",
                      ),
                    ),
                    title: Text(
                      "Dr. Amjad S.K. Durrani",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "Oncologist\nMBBS, AFSA, Medical Oncology (France), DMRT (Clinical Oncology)"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
