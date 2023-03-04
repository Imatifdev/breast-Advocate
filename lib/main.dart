// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:pinkgirl/auth/loginPage.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'controller/index_controller.dart';

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
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


// Within the SecondRoute widget