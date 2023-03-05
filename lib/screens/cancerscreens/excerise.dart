// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../models/imageslist.dart';
import '../../utilities/Mytheme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Exercise extends StatelessWidget {
  const Exercise({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Get Moving to Help Reduce Your Risk of Breast Cancer",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: CustomTheme.pinkthemecolor),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 20,
                child: Image.asset(
                  "Assets/ex.jpeg",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "How exercising lowers breast cancer risk is not fully understood. It’s thought that physical activity regulates hormones including estrogen and insulin, which can fuel breast cancer growth. Regular exercise also helps women stay at a healthy weight, which also helps regulate hormones and helps keep the immune system healthier.",
                style: TextStyle(
                    fontSize: 17, color: Colors.black.withOpacity(0.7)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "How much exercise do women need?",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: CustomTheme.pinkthemecolor),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Unfortunately, there is not a magic number of hours that a woman can exercise to prevent cancer from occurring or to lower risk. But we do know that some is better than none, and more is better than less. Also, more vigorous activity is more effective than less vigorous activity. The American Cancer Society recommends all adults engage in at least 150 minutes of moderate intensity or 75 minutes hours of vigorous intensity activity each week, preferably spread throughout the week.",
                style: TextStyle(
                    fontSize: 17, color: Colors.black.withOpacity(0.7)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(0),
                child: CarouselSlider.builder(
                  itemCount: eximageList.length,
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
                            eximageList[i],
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      onTap: () {
                        var url = eximageList[i];
                        print(url.toString());
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
