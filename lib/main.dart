// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:pinkgirl/screens/dashboard.dart';
import 'package:provider/provider.dart';
import 'controller/index_controller.dart';
import 'screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  final navigatorkey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<IndexController>(
          create: (_) => IndexController(),
        ),
      ],
      child: GetMaterialApp(
        navigatorKey: navigatorkey,
        home: DashBoard(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
