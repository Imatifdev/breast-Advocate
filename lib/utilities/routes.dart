// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pinkgirl/screens/cancerscreens/consultation.dart';

import '../bottomnav.dart';
import '../screens/auth/loginPage.dart';
import '../screens/auth/signuppage.dart';
import '../screens/cancerscreens/docdetail.dart';
import '../screens/cancerscreens/excerise.dart';
import '../screens/cancerscreens/intro.dart';
import '../screens/cancerscreens/symptoms.dart';
import '../screens/dashboard.dart';
import '../screens/profile.dart';
import '../screens/quiz/start_screen.dart';
import '../screens/survivors.dart';

appRoutes() => [
      GetPage(
        name: '/Intro',
        page: () => Intro(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/login',
        page: () => LoginPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/sur',
        page: () => Survivor(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/profie',
        page: () => Profile(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/navbar',
        page: () => BottomNav(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/signup',
        page: () => Signup(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/dashboard',
        page: () => DashBoard(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/symtoms',
        page: () => Symtoms(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/startquiz',
        page: () => StartQuiz(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/doc',
        page: () => Doctor(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/docdetail',
        page: () => DocDetail(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/Exercise',
        page: () => Exercise(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    if (kDebugMode) {
      print(page?.name);
    }
    return super.onPageCalled(page);
  }
}
