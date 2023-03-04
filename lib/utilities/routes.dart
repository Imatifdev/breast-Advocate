import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../view/screens/cancerscreens/excerise.dart';
import '../view/screens/cancerscreens/intro.dart';

appRoutes() => [
      GetPage(
        name: '/Intro',
        page: () => Intro(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/Exercise',
        page: () => MyCustomWidget(),
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
