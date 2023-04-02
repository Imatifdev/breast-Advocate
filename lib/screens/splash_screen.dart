// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../bottomnav.dart';
import '../utilities/Mytheme.dart';
import 'auth/loginPage.dart';
import 'auth/signuppage.dart';
import 'dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToFirstPage();
  }

  _navigateToFirstPage() async {
    await Future.delayed(const Duration(seconds: 4), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Something Went wrong"),
                );
              } else if (snapshot.hasData) {
                return BottomNav();
              } else {
                return Signup();
              }
            },
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            //crossAxisAlignment: CrossAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Lottie.asset(
                  'Assets/auth.json',
                  width: 400,
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                "Breast",
                style: TextStyle(
                    fontSize: 40,
                    color: CustomTheme.pinkthemecolor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Advocate",
                style: TextStyle(
                    fontSize: 55,
                    color: CustomTheme.pinkthemecolor,
                    fontWeight: FontWeight.bold),
              )
            ]),
      ),
    );
  }
}
