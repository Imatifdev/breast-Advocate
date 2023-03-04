// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:lottie/lottie.dart';

import '../../cancerscreens/excerise.dart';
import '../../models/imageslist.dart';
import '../../utilities/Mytheme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import 'cancerscreens/intro.dart';

class DashBoard extends StatelessWidget {
  final makeBottom = Container(
    height: 55.0,
    child: BottomAppBar(
      color: Color.fromRGBO(58, 66, 86, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.blur_on, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.hotel, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_box, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      // bottomNavigationBar: makeBottom,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset(
              'Assets/map.json',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Breast Cancer \nStatistics Worldwide",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: CustomTheme.pinkthemecolor),
                        ),
                        Lottie.asset(
                          'Assets/pinkribbon.json',
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "In 2020, about 2.3 million women were diagnosed with breast cancer worldwide and 685,000 died. Every 14 seconds, somewhere in the world, a woman is diagnosed with breast cancer.",
                      style: TextStyle(fontSize: 17, color: CustomTheme.black),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(0),
                    child: CarouselSlider.builder(
                      itemCount: imageList.length,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        height: 200,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        reverse: false,
                        aspectRatio: 5.0,
                      ),
                      itemBuilder: (context, i, id) {
                        //for onTap to redirect to another screen
                        return GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.white,
                                )),
                            //ClipRRect for image border radius
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                imageList[i],
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          onTap: () {
                            var url = imageList[i];
                            print(url.toString());
                          },
                        );
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Ways to Prevent Breast Cancer",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: CustomTheme.pinkthemecolor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          MyCard(
                            title: 'Introduction',
                            desc: "Get to Know About Breast Cancer",
                            image: "Assets/intro.png",
                            onTap: () {
                              Get.to(Intro());
                            },
                          ),
                          MyCard(
                            title: 'Symtoms',
                            desc: "Read about Symptoms",
                            image: "Assets/2.png",
                            onTap: () {},
                          ),
                          MyCard(
                            title: 'Self Examination',
                            desc: "Read about Symptoms",
                            image: "Assets/4.png",
                            onTap: () {},
                          ),
                          MyCard(
                            title: 'Excercise',
                            desc: "Read about Symptoms",
                            image: "Assets/6.png",
                            onTap: () {
                              Get.to(MyCustomWidget());
                            },
                          ),
                          MyCard(
                            title: 'Risk Factors',
                            desc: "Read about Symptoms",
                            image: "Assets/6.png",
                            onTap: () {},
                          ),
                          MyCard(
                            title: 'Excercise',
                            desc: "Read about Symptoms",
                            image: "Assets/6.png",
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.local_hospital_sharp),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Wrap(
                  children: [
                    ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Share'),
                    ),
                    ListTile(
                      leading: Icon(Icons.copy),
                      title: Text('Copy Link'),
                    ),
                    ListTile(
                      leading: Icon(Icons.edit),
                      title: Text('Edit'),
                    ),
                  ],
                );
              },
            );
          },
          label: Text("Near by Hospital")),
    );
  }
}

class MyCard extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;

  final String desc;

  const MyCard(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap,
      required this.desc});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Color.fromARGB(255, 252, 202, 220),
          child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              leading: Container(
                padding: EdgeInsets.only(right: 12.0),
                decoration: new BoxDecoration(
                    border: new Border(
                        right:
                            new BorderSide(width: 1.0, color: Colors.black))),
                child: Image(image: AssetImage(image)),
              ),
              title: Text(
                title,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

              subtitle: Row(
                children: <Widget>[
                  Text(desc,
                      style: TextStyle(color: Colors.black.withOpacity(0.5)))
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.white, size: 30.0)),
        ),
      ),
    );
  }
}
