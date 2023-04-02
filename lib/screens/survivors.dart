// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../Widgets/youtubeplay.dart';
import '../utilities/Mytheme.dart';

class Survivor extends StatelessWidget {
  const Survivor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.left_chevron,
              size: 40,
              color: CustomTheme.pinkthemecolor,
            ),
          )),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Meet: ",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            Text("Doreen DiSalvo",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: YoutubeVideo(
                    'https://www.youtube.com/watch?v=ccl1dQZKqto')),
          ],
        ),
      ),
    );
  }
}
